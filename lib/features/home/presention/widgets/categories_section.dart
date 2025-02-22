import 'package:flutter/material.dart';
import 'package:carsapp/features/home/presention/widgets/Category_Card.dart';
import 'package:carsapp/core/AppColors.dart';

class CategoriesSection extends StatefulWidget {
  const CategoriesSection({super.key});

  @override
  _CategoriesSectionState createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {
  final ScrollController _scrollController = ScrollController();

  void _scrollLeft() {
    _scrollController.animateTo(
      _scrollController.offset - 200, // Adjust scroll distance
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _scrollRight() {
    _scrollController.animateTo(
      _scrollController.offset + 200, // Adjust scroll distance
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          // Left Arrow
          IconButton(
            color: Colors.blue,
            icon: Icon(Icons.arrow_back_ios, color: AppColors.primaryBlue),
            onPressed: _scrollLeft,
          ),

          // Scrollable List
          Expanded(
            child: ListView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              children: [
                CategoryCard(
                  onTap: () {},
                  title: 'Cars',
                  icon: Icons.car_rental,
                ),
                CategoryCard(
                  title: 'Services',
                  onTap: () {},
                  icon: Icons.build,
                ),
                CategoryCard(
                  title: 'Technicians',
                  icon: Icons.engineering,
                  onTap: () {},
                ),
                CategoryCard(
                  title: 'Accessories',
                  icon: Icons.shopping_bag,
                  onTap: () {},
                ),
              ],
            ),
          ),

          // Right Arrow
          IconButton(
            color: Colors.blue,
            icon: Icon(Icons.arrow_forward_ios, color: AppColors.primaryBlue),
            onPressed: _scrollRight,
          ),
        ],
      ),
    );
  }
}
