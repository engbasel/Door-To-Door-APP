// =================== Category Card Widget ===================
import 'package:carsapp/core/AppColors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class categoryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  void Function() onTap;

  categoryCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryBlue.withOpacity(0.2),
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30, color: AppColors.primaryBlue),
            const SizedBox(height: 5),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkBlue),
            ),
          ],
        ),
      ),
    );
  }
}
