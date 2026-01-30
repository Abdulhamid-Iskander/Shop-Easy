import 'dart:convert';
import 'package:http/http.dart' as http;

/// Service responsible for handling interactions with the remote Recommendation API.
///
/// This service connects to the Hybrid NCF model hosted on Hugging Face Spaces
/// to retrieve personalized product suggestions based on user interactions.
class RecommendationService {

  /// The base endpoint for the live Hugging Face API.
  /// Note: Using the direct .hf.space domain avoids HTML wrapper issues.
  static const String _baseUrl = 'https://abdulhamid-iskander-shopeasy-final.hf.space';

  /// Fetches a list of recommended product IDs for a specific user.
  ///
  /// This method sends a POST request to the inference server with the [userId].
  /// Returns a [List<String>] of product IDs if successful, or an empty list on failure.
  ///
  /// [userId] - The unique identifier of the active user.
  Future<List<String>> getRecommendations(String userId) async {
    try {
      // Construct the full API URI
      final Uri uri = Uri.parse('$_baseUrl/recommend');

      // Execute the POST request
      final response = await http.post(
        uri,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode({'user_id': userId}),
      );

      // Check for a successful HTTP 200 OK response
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);

        // Validate the API internal status
        if (data['status'] == 'success' && data['products'] != null) {
          return List<String>.from(data['products']);
        } else if (data['status'] == 'cold_start') {
          // Handle new users gracefully (optional: log this event)
          return [];
        }
      } else {
        // Log server-side errors for debugging purposes
        print('API Error: ${response.statusCode} - ${response.body}');
      }

      return [];

    } catch (e) {
      // Log connection or parsing errors
      print('Recommendation Service Exception: $e');
      return [];
    }
  }
}