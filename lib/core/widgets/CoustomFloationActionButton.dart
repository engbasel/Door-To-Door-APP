import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatefulWidget {
  final List<Widget> pages;
  final int selectedIndex;

  const CustomFloatingActionButton({
    super.key,
    required this.pages,
    required this.selectedIndex,
  });

  @override
  _CustomFloatingActionButtonState createState() =>
      _CustomFloatingActionButtonState();
}

class _CustomFloatingActionButtonState extends State<CustomFloatingActionButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
      lowerBound: 0.85,
      upperBound: 1.0,
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _controller.forward(),
      onTapUp: (_) => _controller.reverse(),
      onTapCancel: () => _controller.reverse(),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: FloatingActionButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Add new data for ${widget.pages[widget.selectedIndex].runtimeType}',
                    ),
                  ),
                );
              },
              backgroundColor: Colors.black,
              elevation: 10,
              splashColor: Colors.yellowAccent.withOpacity(0.3),
              shape: const CircleBorder(),
              child: Icon(
                Icons.add,
                color: Colors.yellowAccent.withOpacity(0.8),
                size: 30,
              ),
            ),
          );
        },
      ),
    );
  }
}
