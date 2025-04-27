import 'package:flutter/material.dart';
import '../constants/constants.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> favoriteItems = [
    {
      "title": "Airpods Pro",
      "price": "\$129.99",
      "rating": 4.8,
      "image": "assets/images/airpods_pro.jpg",
    },
    {
      "title": "Apple Watch Series 7",
      "price": "\$89.99",
      "rating": 4.9,
      "image": "assets/images/apple_watch_series_7.jpg",
    },
    {
      "title": "Anker Powercore 10000",
      "price": "\$39.99",
      "rating": 4.6,
      "image": "assets/images/anker_powercore_10000.jpg",
    },
    {
      "title": "Iphone 12 Pro",
      "price": "\$599.99",
      "rating": 4.7,
      "image": "assets/images/iphone_12_pro.jpg",
    },
  ];

  FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "My Favorites",
          style: TextStyle(color: AppColors.textPrimary),
        ),
        actions: [TextButton(onPressed: () {}, child: Text("Edit"))],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        itemCount: favoriteItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .7,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (context, index) {
          final item = favoriteItems[index];
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      child: Image.asset(
                        item['image'],
                        fit: BoxFit.cover,
                        height: 100,
                        width: double.infinity,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite, color: Colors.red),
                      onPressed: () {},
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['title'],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        item['price'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
