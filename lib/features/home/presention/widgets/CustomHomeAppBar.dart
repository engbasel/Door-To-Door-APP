import 'package:flutter/material.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black, // Black background
      title: const Text(
        'Home',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications,
            color: Colors.yellow,
          ),
          onPressed: () {
            // Handle notifications
          },
          splashColor: Colors.yellow, // Yellow accent on tap
          highlightColor: Colors.yellow.withOpacity(0.3),
        ),
      ],
      elevation: 5,
      shadowColor: Colors.yellow.withOpacity(0.5), // Yellow shadow effect
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
