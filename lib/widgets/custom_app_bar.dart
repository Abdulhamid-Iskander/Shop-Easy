import 'package:flutter/material.dart';
import 'package:ecommerce_ui/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            kAppLogo,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          Row(
            children: [
              IconButton(icon: Icon(Icons.search, size: 26), onPressed: () {}),
              SizedBox(width: 8),
              IconButton(
                icon: Icon(Icons.shopping_cart_outlined, size: 26),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
