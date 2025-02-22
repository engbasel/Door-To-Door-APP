// **Animated Circle Widget**
import 'package:flutter/material.dart';

Widget buildAnimatedCircle(double size, Color color) {
  return TweenAnimationBuilder<double>(
    tween: Tween(begin: 0.8, end: 1.2),
    duration: const Duration(seconds: 2),
    curve: Curves.easeInOut,
    builder: (context, scale, child) {
      return Transform.scale(
        scale: scale,
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
      );
    },
  );
}
