import 'package:flutter/material.dart';
import '../services/recommendation_service.dart';

class ProductProvider with ChangeNotifier {
  final RecommendationService _recService = RecommendationService();

  List<String> recommendedProductIds = [];
  bool isLoadingRecs = false;

  Future<void> fetchRecommendations(String userId) async {
    isLoadingRecs = true;
    notifyListeners();

    recommendedProductIds = await _recService.getRecommendations(userId);

    isLoadingRecs = false;
    notifyListeners();
  }


}