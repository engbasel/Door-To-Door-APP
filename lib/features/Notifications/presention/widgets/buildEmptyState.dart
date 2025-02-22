// Widget for Empty State when No Notifications
import 'package:flutter/material.dart';

Widget buildEmptyState() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.notifications_off, size: 80, color: Colors.grey.shade500),
        const SizedBox(height: 10),
        const Text(
          "No new notifications",
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ],
    ),
  );
}
