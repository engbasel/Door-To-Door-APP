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
      decoration: BoxDecoration(
        color: _isFocused
            ? AppColors.lightSurface.withOpacity(0.95)
            : AppColors.lightSurface.withOpacity(0.6),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: _isFocused ? AppColors.primaryBlue : Colors.transparent,
          width: 2,
        ),
        boxShadow: _isFocused
            ? [
                BoxShadow(
                  color: AppColors.primaryBlue.withOpacity(0.3),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: const Offset(0, 3),
                ),
              ]
            : [],
      ),
      child: TextField(
        focusNode: _focusNode,
        cursorColor: AppColors.primaryBlue,
        style: const TextStyle(color: AppColors.lightTextPrimary),
        decoration: InputDecoration(
          hintText: 'Search...',
          hintStyle: const TextStyle(color: AppColors.lightTextSecondary),
          prefixIcon: const Icon(Icons.search, color: AppColors.darkBlue),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        ),
      ),
    );
  }
}
