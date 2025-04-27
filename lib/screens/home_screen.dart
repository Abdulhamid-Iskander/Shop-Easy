import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/flash_sale_section.dart';
import '../widgets/popular_products_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(height: 12),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.primary.withOpacity(0.1),
                ),
                child: Center(
                  child: Text(
                    "Spring Sale up to 50%",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              CategoriesListView(),
              const SizedBox(height: 16),
              FlashSaleSection(),
              const SizedBox(height: 16),
              PopularProductsSection(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
