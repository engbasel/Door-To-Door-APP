import 'package:carsapp/Features/auth/presention/widgets/primary_button.dart';
import 'package:carsapp/core/constens.dart';
import 'package:carsapp/features/auth/presention/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:carsapp/core/AppColors.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isDarkMode = false; // Assume this comes from settings or system theme

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          isDarkMode ? AppColors.darkSurface : AppColors.lightSurface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  /// Welcome Text & Logo
                  Column(
                    children: [
                      Image.asset(
                        'assets/logo.png', // Ensure you have a logo image in assets
                        height: 100,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Welcome Back!",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryBlue,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Login to continue",
                        style: TextStyle(
                          fontSize: 16,
                          color: isDarkMode
                              ? Colors.white70
                              : AppColors.secondaryBlue,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),

                  /// Email Field
                  buildCustomTextField(
                    controller: emailController,
                    label: "Email",
                    icon: Icons.email,
                    isDarkMode: isDarkMode,
                    fieldType: "email",
                    keyboardType: TextInputType.emailAddress,
                    isPassword: false,
                  ),
                  const SizedBox(height: 16),

                  /// Password Field
                  buildCustomTextField(
                    controller: passwordController,
                    label: "Password",
                    icon: Icons.lock,
                    isDarkMode: isDarkMode,
                    fieldType: "password",
                    isPassword: true,
                  ),
                  const SizedBox(height: 10),

                  /// Forgot Password
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // Navigate to forgot password screen
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: AppColors.primaryBlue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  CustomButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, RoutesClass.home);
                    },
                    text: "Login",
                    width: double.infinity,
                  ),
                  const SizedBox(height: 16),

                  /// Sign Up Redirect
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 14,
                          color: isDarkMode
                              ? Colors.white70
                              : AppColors.secondaryBlue,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigate to sign-up screen
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: AppColors.primaryBlue,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
