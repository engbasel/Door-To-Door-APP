import 'package:flutter/material.dart';

class CoustomFloationActionButton extends StatelessWidget {
  const CoustomFloationActionButton({
    super.key,
    required List<Widget> pages,
    required int selectedIndex,
    required this.runtimeType,
  })  : _pages = pages,
        _selectedIndex = selectedIndex;

  final List<Widget> _pages;
  final int _selectedIndex;
  @override
  final Type runtimeType;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:
                Text('Add new data for ${_pages[_selectedIndex].runtimeType}'),
          ),
        );
      },
      backgroundColor: Colors.blue.shade900,
      child: const Icon(Icons.add, color: Colors.white),
    );
  }
}
