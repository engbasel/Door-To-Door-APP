import 'package:carsapp/core/AppColors.dart';
import 'package:carsapp/core/Functions/validator.dart';
import 'package:flutter/material.dart';

/// A custom text field widget that can be used across the app.
/// It supports dark/light mode, password visibility toggle, and custom validation.
///
/// [controller]: The controller for the text field.
/// [label]: The label text for the text field.
/// [icon]: The icon to display on the left side of the text field.
/// [isDarkMode]: Whether the app is in dark mode or not.
/// [fieldType]: The type of field (e.g., email, password, etc.) for validation purposes.
/// [keyboardType]: The type of keyboard to display (e.g., text, number, email).
/// [suffixIcon]: An optional icon to display on the right side of the text field.
/// [onSuffixIconPressed]: A callback function when the suffix icon is pressed.
/// [isPassword]: Whether the text field is for password input (obscures text).
Widget buildCustomTextField({
  required TextEditingController controller,
  required String label,
  required IconData icon,
  required bool isDarkMode,
  required String fieldType,
  TextInputType keyboardType = TextInputType.text,
  IconData? suffixIcon,
  VoidCallback? onSuffixIconPressed,
  required bool isPassword,
}) {
  return StatefulBuilder(
    builder: (context, setState) {
      return TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: AppColors.secondaryBlue),
          prefixIcon: Icon(icon, color: AppColors.primaryBlue),
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(
                    isPassword ? Icons.visibility_off : Icons.visibility,
                    color: AppColors.primaryBlue,
                  ),
                  onPressed: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                )
              : suffixIcon != null
                  ? IconButton(
                      icon: Icon(suffixIcon, color: AppColors.primaryBlue),
                      onPressed: onSuffixIconPressed,
                    )
                  : null,
          filled: true,
          fillColor:
              isDarkMode ? AppColors.darkSurface : AppColors.lightSurface,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.primaryBlue, width: 1.5),
          ),
          errorStyle: TextStyle(color: AppColors.primaryBlue),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: AppColors.darkBlue,
              width: 2,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.primaryYellow, width: 2),
          ),
          focusColor: AppColors.primaryYellow,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.primaryYellow, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.secondaryBlue, width: 1),
          ),
        ),
        validator: (value) =>
            Validator.validateField(value, label, fieldType: fieldType),
      );
    },
  );
}
