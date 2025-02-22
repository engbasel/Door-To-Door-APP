import 'package:carsapp/core/widgets/CustomBottomNavigationBar.dart';
import 'package:carsapp/core/widgets/CustomDrawer.dart';
import 'package:carsapp/features/Brands/presention/views/BrandsScreen.dart';
import 'package:carsapp/features/Orders/presention/views/OrdersScreen.dart';
import 'package:carsapp/features/Profile/presention/views/ProfileScreen.dart';
import 'package:carsapp/features/home/presention/home_viwe.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeView(),
    const BrandsScreen(),
    const OrdersScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('DoorToDoor'),
      //   backgroundColor: Colors.blue.shade900,
      // ),
      drawer: const CustomDrawer(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                  'Add new data for ${_pages[_selectedIndex].runtimeType}'),
            ),
          );
        },
        backgroundColor: Colors.blue.shade900,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
