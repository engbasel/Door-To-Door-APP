import 'package:carsapp/features/home/presention/widgets/Category_Card.dart';
import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          categoryCard(
            onTap: () {},
            title: 'Cars',
            icon: Icons.car_rental,
          ),
          categoryCard(
            title: 'Services',
            onTap: () {},
            icon: Icons.build,
          ),
          categoryCard(
            title: 'Technicians',
            icon: Icons.engineering,
            onTap: () {},
          ),
          categoryCard(
            title: 'Accessories',
            icon: Icons.shopping_bag,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
