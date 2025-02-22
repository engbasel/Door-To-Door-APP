import 'package:carsapp/core/AppColors.dart';
import 'package:carsapp/core/constens.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart'; // For animations

class CustomHomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  _CustomHomeAppBarState createState() => _CustomHomeAppBarState();
}

class _CustomHomeAppBarState extends State<CustomHomeAppBar>
    with SingleTickerProviderStateMixin {
  bool _hasNotification = true;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black, // Black background
      title: const Text(
        'Home',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      actions: [
        _buildAnimatedNotificationIcon(),
      ],
      elevation: 5,
      shadowColor: Colors.yellow.withOpacity(0.5),
    );
  }

  Widget _buildAnimatedNotificationIcon() {
    return _hasNotification
        ? Bounce(
            infinite: true, // Keep animating
            duration: const Duration(seconds: 2),
            from: 10,
            child: _notificationIcon(),
          )
        : _notificationIcon();
  }

  Widget _notificationIcon() {
    return IconButton(
      icon: const Icon(
        Icons.notifications,
        color: AppColors.primaryYellow,
      ),
      onPressed: () {
        // Handle notification icon press
        Navigator.pushNamed(context, RoutesClass.notifications);

        setState(() {
          _hasNotification = !_hasNotification; // Toggle animation
        });
      },
      splashColor: Colors.yellow,
      highlightColor: Colors.yellow.withOpacity(0.3),
    );
  }
}
