import 'package:carsapp/features/Profile/presention/widgets/buildProfileOption.dart';
import 'package:carsapp/features/Profile/presention/widgets/profile_appbar.dart';
import 'package:flutter/material.dart';
import 'package:carsapp/core/AppColors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      appBar: ProfileAppbar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0.8, end: 1.0),
              duration: const Duration(seconds: 1),
              curve: Curves.elasticOut,
              builder: (context, scale, child) {
                return Transform.scale(scale: scale, child: child);
              },
              child: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/user_avatar.png'),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "John Doe",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 10,
                    color: AppColors.primaryBlue,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
            ),
            const Text(
              "johndoe@example.com",
              style: TextStyle(color: AppColors.lightTextSecondary),
            ),
            const SizedBox(height: 20),
            buildProfileOption(Icons.person, "Edit Profile", () {}),
            buildProfileOption(Icons.lock, "Change Password", () {}),
            buildProfileOption(Icons.history, "Order History", () {}),
            buildProfileOption(Icons.payment, "Payment Methods", () {}),
            buildProfileOption(Icons.settings, "Settings", () {}),
            const SizedBox(height: 30),
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0.8, end: 1.0),
              duration: const Duration(seconds: 1),
              curve: Curves.easeOutBack,
              builder: (context, scale, child) {
                return Transform.scale(scale: scale, child: child);
              },
              child: ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.danger,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                icon: const Icon(Icons.logout, color: Colors.white),
                label:
                    const Text("Logout", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
