import 'package:carsapp/core/AppColors.dart';
import 'package:carsapp/features/home/presention/widgets/CategoriesSection.dart';
import 'package:carsapp/features/home/presention/widgets/CoustomSearchBar.dart';
import 'package:carsapp/features/home/presention/widgets/Featured_Item.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryBlue,
        title: const Text('Home', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              // Handle notifications
            },
          ),
        ],
      ),
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
                  color: AppColors.darkBlue),
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
                  color: AppColors.darkBlue),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const FeaturedItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
