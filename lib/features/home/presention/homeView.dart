import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
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
      appBar: AppBar(
        title: const Text('DoorToDoor'),
        backgroundColor: Colors.blue.shade900,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
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
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.car_rental), label: 'Brands'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue.shade900,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle "Add New Data" button functionality
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(
                    'Add new data for ${_pages[_selectedIndex].runtimeType}')),
          );
        },
        backgroundColor: Colors.blue.shade900,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

// =================== Pages for Bottom Navigation ===================

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Home Screen', style: TextStyle(fontSize: 22)));
  }
}

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Brands Screen', style: TextStyle(fontSize: 22)));
  }
}

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Orders Screen', style: TextStyle(fontSize: 22)));
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Profile Screen', style: TextStyle(fontSize: 22)));
  }
}

// =================== Drawer Menu Item ===================
class DrawerMenuItem extends StatelessWidget {
  final String title;

  const DrawerMenuItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        // Handle navigation inside the drawer
        Navigator.pop(context);
      },
    );
  }
}
