import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../screens/product_screen.dart';

class FlashSaleSection extends StatelessWidget {
  final List<Map<String, dynamic>> flashItems = [
    {
      "title": "Galaxy Buds",
      "price": "\$120",
      "image": "assets/images/galaxy_buds_pro.jpg",
      "rating": 4.7,
    },
    {
      "title": "Apple Watch",
      "price": "\$149",
      "image": "assets/images/apple_watch_series_7.jpg",
      "rating": 4.8,
    },
  ];

  FlashSaleSection({super.key});

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
                "Flash Sale",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text("See All", style: TextStyle(color: AppColors.primary)),
            ],
          ),
        ),
        SizedBox(height: 8),
        SizedBox(
          height: 160,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: flashItems.length,
            itemBuilder: (context, index) {
              final item = flashItems[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductScreen(product: item),
                    ),
                  );
                },
                child: Container(
                  width: 130,
                  margin: EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    color: AppColors.discountBackground,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.asset(item['image'], fit: BoxFit.contain),
                      ),
                      SizedBox(height: 8),
                      Text(
                        item['title'],
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 4),
                      Text(
                        item['price'],
                        style: TextStyle(
                          color: AppColors.saleRed,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
