import 'package:flutter/material.dart';
import 'package:carsapp/core/AppColors.dart';
import 'package:animate_do/animate_do.dart';

class ProfileAppbar extends StatefulWidget implements PreferredSizeWidget {
  const ProfileAppbar({super.key});

  @override
  State<ProfileAppbar> createState() => _ProfileAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ProfileAppbarState extends State<ProfileAppbar> {
  bool _hasNotification = true; // Simulated notification status

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Profile',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      backgroundColor: AppColors.darkBackgroundblack,
      elevation: 4,
      shadowColor: AppColors.primaryBlue.withOpacity(0.3),
      actions: [
        buildAnimatedNotificationIcon(),
        const SizedBox(width: 12),
      ],
    );
  }

  Widget buildAnimatedNotificationIcon() {
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
      icon: Stack(
        children: [
          const Icon(
            Icons.notifications,
            color: AppColors.primaryYellow,
            size: 28,
          ),
          if (_hasNotification)
            Positioned(
              right: 3,
              top: 3,
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.darkBackgroundblack,
                    width: 2,
                  ),
                ),
              ),
            ),
        ],
      ),
      onPressed: () {
        setState(() {
          _hasNotification = !_hasNotification; // Toggle animation
        });
      },
      splashRadius: 24,
    );
  }
}
