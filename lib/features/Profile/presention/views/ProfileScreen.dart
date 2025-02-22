import 'package:carsapp/features/Orders/presention/views/OrdersScreen.dart';
import 'package:carsapp/features/Payment/presention/views/PaymentView.dart';
import 'package:carsapp/features/Profile/presention/views/ChangePasswordview.dart';
import 'package:carsapp/features/Profile/presention/views/FeedbackView.dart';
import 'package:carsapp/features/Profile/presention/views/SettingsView.dart';
import 'package:carsapp/features/Profile/presention/widgets/CircalAvaterAnimation.dart';
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
            CircalAvaterAnimation(),
            const SizedBox(height: 12),
            const Text(
              "5k subteam",
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
              "😂احنا اصحاب بلدنا",
              style: TextStyle(color: AppColors.lightTextSecondary),
            ),
            const SizedBox(height: 20),
            buildProfileOption(Icons.person, "Feedback Screen", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FeedbackView()),
              );
            }),
            buildProfileOption(Icons.lock, "Change Password", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChangePasswordScreen()),
              );
            }),
            buildProfileOption(Icons.history, "Order History", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrdersScreen()),
              );
            }),
            buildProfileOption(Icons.payment, "Payment Methods", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentView()),
              );
            }),
            buildProfileOption(Icons.settings, "Settings", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsView()),
              );
            }),
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
