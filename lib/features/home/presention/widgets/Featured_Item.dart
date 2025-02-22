import 'package:carsapp/core/AppColors.dart';
import 'package:flutter/material.dart';

class FeaturedItem extends StatefulWidget {
  const FeaturedItem({super.key});

  @override
  _FeaturedItemState createState() => _FeaturedItemState();
}

class _FeaturedItemState extends State<FeaturedItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
      lowerBound: 0.95,
      upperBound: 1.0,
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _controller.forward(),
      onTapUp: (_) => _controller.reverse(),
      onTapCancel: () => _controller.reverse(),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 8,
              shadowColor: AppColors.primaryYellow,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: ListTile(
                leading: const Icon(
                  Icons.star,
                  color: AppColors.primaryYellow,
                  size: 30,
                ),
                title: const Text(
                  'Featured Item',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Description of the featured item.',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: AppColors.primaryYellow,
                ),
                onTap: () {
                  // Handle item tap
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
