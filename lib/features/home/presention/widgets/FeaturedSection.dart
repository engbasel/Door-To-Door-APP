import 'package:carsapp/features/home/presention/widgets/Featured_Item.dart';
import 'package:flutter/material.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(), // Smooth scrolling
        itemCount: 5,
        separatorBuilder: (context, index) =>
            const SizedBox(height: 10), // Space between items
        itemBuilder: (context, index) {
          return const FeaturedItem(); // Using `const` for better performance
        },
      ),
    );
  }
}
