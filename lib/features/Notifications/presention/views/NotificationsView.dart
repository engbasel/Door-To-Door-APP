import 'package:carsapp/features/Notifications/presention/widgets/buildEmptyState.dart';
import 'package:carsapp/features/Notifications/presention/widgets/buildNotificationCard.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:carsapp/core/AppColors.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  // Sample Notifications Data
  List<Map<String, dynamic>> getNotifications() {
    return [
      {
        "title": "🚗 Service Reminder",
        "message": "Your car service is due in 3 days!",
        "time": DateTime.now().subtract(const Duration(hours: 2)),
        "icon": Icons.car_repair,
      },
      {
        "title": "🔥 Exclusive Offer!",
        "message": "Get 20% off on your next oil change. Limited time!",
        "time": DateTime.now().subtract(const Duration(days: 1)),
        "icon": Icons.local_offer,
      },
      {
        "title": "✅ Booking Confirmed",
        "message": "Your car wash appointment is tomorrow at 10 AM.",
        "time": DateTime.now().subtract(const Duration(days: 2)),
        "icon": Icons.calendar_today,
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    final notifications = getNotifications();

    return Scaffold(
      // AppBar styling matches last screen style

      backgroundColor: AppColors.lightBackground, // Match last screen style
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.primaryYellow,
            )),
        title: const Text(
          'Notifications',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: AppColors.darkBackgroundblack, // Darker tone
        elevation: 4,
      ),
      body: notifications.isEmpty
          ? buildEmptyState()
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: notifications.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return FadeInLeft(
                  duration: Duration(milliseconds: 300 * (index + 1)),
                  child: buildNotificationCard(notification),
                );
              },
            ),
    );
  }
}
