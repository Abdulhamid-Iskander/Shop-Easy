import 'dart:convert';
import 'package:http/http.dart' as http;

class RecommendationService {

  static const String _baseUrl = 'http://10.0.2.2:8000';

  Future<List<String>> getRecommendations(String userId) async {
    try {
      final response = await http.post(
        Uri.parse('$_baseUrl/recommend'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'user_id': userId}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data['status'] == 'success') {
          return List<String>.from(data['products']);
        }
      }
      return [];
    } catch (e) {
      return [];
    }
  }
}