import 'package:carsapp/core/AppColors.dart';
import 'package:carsapp/features/home/presention/widgets/CustomHomeAppBar.dart';
import 'package:carsapp/features/home/presention/widgets/FeaturedSection.dart';
import 'package:carsapp/features/home/presention/widgets/categories_section.dart';
import 'package:carsapp/features/home/presention/widgets/CoustomSearchBar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHomeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            // Search Bar
            CoustomSearchBar(),
            const SizedBox(height: 20),
            // Categories Section
            const Text(
              'Categories',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.darkBackgroundblack,
              ),
            ),
            const SizedBox(height: 10),
            CategoriesSection(),
            const SizedBox(height: 20),
            // Featured Section
            const Text(
              'Featured',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.darkBackgroundblack,
              ),
            ),
            const SizedBox(height: 10),
            FeaturedSection(),
          ],
        ),
      ),
    );
  }
}
