import 'package:flutter/material.dart';

class CircalAvaterAnimation extends StatelessWidget {
  const CircalAvaterAnimation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.05, end: 1.0),
      duration: const Duration(seconds: 8),
      curve: Curves.elasticInOut,
      builder: (context, scale, child) {
        return Transform.scale(scale: scale, child: child);
      },
      child: const CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage('images/Team.jpg'),
      ),
    );
  }
}
