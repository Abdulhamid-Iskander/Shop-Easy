import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../screens/product_screen.dart';

class PopularProductsSection extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      "title": "Galaxy Buds Pro",
      "price": "\$120",
      "image": "assets/images/galaxy_buds_pro.jpg",
      "rating": 4.5,
    },
    {
      "title": "Apple Watch Series 7",
      "price": "\$149",
      "image": "assets/images/apple_watch_series_7.jpg",
      "rating": 4.2,
    },
  ];

  PopularProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Products",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text("See All", style: TextStyle(color: AppColors.primary)),
            ],
          ),
        ),
        SizedBox(height: 8),
        GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductScreen(product: product),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.asset(product['image'], fit: BoxFit.contain),
                    ),
                    SizedBox(height: 8),
                    Text(
                      product['title'],
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 4),
                    Text(
                      product['price'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
