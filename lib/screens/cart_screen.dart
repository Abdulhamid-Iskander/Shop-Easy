import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'payment_method_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("My Cart", style: TextStyle(color: AppColors.textPrimary)),
      ),
      body: Column(
        children: [
          _buildCartItem(
            "Airpods Pro",
            "assets/images/airpods_pro.jpg",
            "\$129.99",
          ),
          _buildCartItem(
            "Apple watch series 7",
            "assets/images/apple_watch_series_7.jpg",
            "\$89.99",
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentMethodScreen(),
                  ),
                );
              },
              child: Text(
                "Checkout",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCartItem(String title, String image, String price) {
    return ListTile(
      leading: Image.asset(image, height: 50),
      title: Text(title),
      subtitle: Text(price),
      trailing: IconButton(icon: Icon(Icons.delete_outline), onPressed: () {}),
    );
  }
}
