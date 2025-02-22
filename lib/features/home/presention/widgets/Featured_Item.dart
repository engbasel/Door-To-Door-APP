// =================== Featured Item Widget ===================
import 'package:carsapp/core/AppColors.dart';
import 'package:flutter/material.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(Icons.star, color: AppColors.primaryYellow),
        title: const Text('Featured Item',
            style: TextStyle(color: AppColors.darkBlue)),
        subtitle: const Text('Description of the featured item.'),
        trailing: Icon(Icons.arrow_forward_ios,
            size: 16, color: AppColors.secondaryBlue),
        onTap: () {
          // Handle item tap
        },
      ),
    );
  }
}
