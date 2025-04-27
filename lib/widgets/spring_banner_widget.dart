import 'package:flutter/material.dart';
import 'package:ecommerce_ui/constants/constants.dart';

class SpringBannerWidget extends StatelessWidget {
  const SpringBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Spring Sale",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  "Up to 50% off",
                  style: TextStyle(color: AppColors.black, fontSize: 16),
                ),
              ],
            ),
          ),
          Icon(Icons.local_offer, color: AppColors.black, size: 40),
        ],
      ),
    );
  }
}
