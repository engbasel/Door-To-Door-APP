import 'package:carsapp/core/constens.dart';
import 'package:carsapp/features/auth/presention/view/login_view.dart';
import 'package:carsapp/features/auth/presention/view/signup_view.dart';
import 'package:carsapp/features/home/presention/homeView.dart';
import 'package:carsapp/features/splash/presention/views/splash_view.dart';
import 'package:flutter/material.dart';

class DoorToDoorApp extends StatelessWidget {
  const DoorToDoorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DoorToDoor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: RoutsClass.splash,
      routes: {
        RoutsClass.splash: (context) => const SplashView(),
        RoutsClass.home: (context) => const HomeView(),
        RoutsClass.signup: (context) => const SignUpView(),
        RoutsClass.login: (context) => const LoginView(),
      },
    );
  }
}
