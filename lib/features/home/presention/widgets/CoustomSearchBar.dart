import 'package:flutter/material.dart';
import 'package:carsapp/core/AppColors.dart';

class CoustomSearchBar extends StatefulWidget {
  const CoustomSearchBar({super.key});

  @override
  _CoustomSearchBarState createState() => _CoustomSearchBarState();
}

class _CoustomSearchBarState extends State<CoustomSearchBar> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.darkBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color:
              _isFocused ? AppColors.primaryYellow : AppColors.darkBackground,
          width: 2,
        ),
        boxShadow: _isFocused
            ? [
                BoxShadow(
                  color: AppColors.primaryYellow.withOpacity(0.5),
                  blurRadius: 15,
                  spreadRadius: 3,
                  offset: const Offset(0, 5),
                ),
              ]
            : [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: const Offset(0, 3),
                ),
              ],
      ),
      child: TextField(
        focusNode: _focusNode,
        cursorColor: AppColors.primaryYellow,
        style: const TextStyle(color: AppColors.lightSurface, fontSize: 16),
        decoration: InputDecoration(
          hintText: 'Search...',
          hintStyle: TextStyle(color: AppColors.primaryYellow.withOpacity(0.7)),
          prefixIcon: const Icon(Icons.search, color: AppColors.primaryYellow),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }
}
