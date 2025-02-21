// =================== Custom Drawer ===================
import 'package:carsapp/core/widgets/DrawerMenuItem.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Menu',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          DrawerMenuItem(title: 'Home'),
          DrawerMenuItem(title: 'About'),
          DrawerMenuItem(title: 'Contact Us'),
          DrawerMenuItem(title: 'Brands'),
          DrawerMenuItem(title: 'Models'),
          DrawerMenuItem(title: 'Technicians'),
          DrawerMenuItem(title: 'Drivers'),
          DrawerMenuItem(title: 'Customers'),
          DrawerMenuItem(title: 'Colors'),
          DrawerMenuItem(title: 'Orders'),
          DrawerMenuItem(title: 'Products'),
          DrawerMenuItem(title: 'Logout'),
        ],
      ),
    );
  }
}
