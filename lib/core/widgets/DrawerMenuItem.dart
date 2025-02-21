// =================== Drawer Menu Item ===================
import 'package:flutter/material.dart';

class DrawerMenuItem extends StatelessWidget {
  final String title;

  const DrawerMenuItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
