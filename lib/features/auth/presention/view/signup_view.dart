import 'dart:developer';
import 'package:carsapp/core/AppColors.dart';
import 'package:carsapp/Features/auth/presention/widgets/primary_button.dart';
import 'package:carsapp/Features/auth/presention/widgets/custom_text_field.dart';
import 'package:carsapp/core/constens.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    _confirmPasswordController.dispose();
    _cityController.dispose();
    _streetController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign Up',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryBlue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                /// **Welcome Message**
                Column(
                  children: [
                    Image.asset(
                      'assets/signup_icon.png', // Add a related sign-up icon in assets
                      height: 80,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Join Us Today!",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryBlue,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Create an account and start your journey.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: isDarkMode
                            ? Colors.white70
                            : AppColors.secondaryBlue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                /// **Form Fields**
                buildCustomTextField(
                  controller: _nameController,
                  fieldType: 'Name',
                  icon: Icons.person,
                  isDarkMode: isDarkMode,
                  isPassword: false,
                  label: 'Full Name',
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 12),
                buildCustomTextField(
                  controller: _emailController,
                  fieldType: 'Email',
                  icon: Icons.email,
                  isDarkMode: isDarkMode,
                  isPassword: false,
                  label: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 12),
                buildCustomTextField(
                  controller: _phoneController,
                  fieldType: 'Phone',
                  icon: Icons.phone,
                  isDarkMode: isDarkMode,
                  isPassword: false,
                  label: 'Phone Number',
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 12),
                buildCustomTextField(
                  controller: _cityController,
                  fieldType: 'City',
                  icon: Icons.location_city,
                  isDarkMode: isDarkMode,
                  isPassword: false,
                  label: 'City',
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 12),
                buildCustomTextField(
                  controller: _streetController,
                  fieldType: 'Street',
                  icon: Icons.location_on,
                  isDarkMode: isDarkMode,
                  isPassword: false,
                  label: 'Street Address',
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 12),
                buildCustomTextField(
                  controller: _passwordController,
                  fieldType: 'Password',
                  icon: Icons.lock,
                  isDarkMode: isDarkMode,
                  isPassword: true,
                  label: 'Password',
                ),
                const SizedBox(height: 12),
                buildCustomTextField(
                  controller: _confirmPasswordController,
                  fieldType: 'Confirm Password',
                  icon: Icons.lock_outline,
                  isDarkMode: isDarkMode,
                  isPassword: true,
                  label: 'Confirm Password',
                ),
                const SizedBox(height: 24),

                /// **Sign Up Button**
                CustomButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      log('Sign-up successful!');
                      // Proceed with sign-up logic
                    } else {
                      log('Form validation errors!');
                    }
                  },
                  text: 'Sign Up',
                ),
                const SizedBox(height: 16),

                /// **Login Redirect**
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, RoutesClass.login);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryBlue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
