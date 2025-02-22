// =================== Pages for Bottom Navigation ===================
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Home View'),
      ),
      body: Column(
        children: [
          Text('Home View'),
        ],
      ),
    );
  }
}
