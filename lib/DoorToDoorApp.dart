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
      initialRoute: RoutesClass.splash,
      routes: {
        // Core Screens
        RoutesClass.splash: (context) => const SplashView(),
        RoutesClass.login: (context) => const LoginView(),
        RoutesClass.signUp: (context) => const SignUpView(),
        RoutesClass.home: (context) => const HomeView(),
        // RoutesClass.onboarding: (context) => const OnboardingView(),

        // RoutesClass.profile: (context) => const ProfileView(),
        // RoutesClass.settings: (context) => const SettingsView(),
        // RoutesClass.aboutUs: (context) => const AboutUsView(),
        // RoutesClass.helpSupport: (context) => const HelpSupportView(),

        // Car Service Screens
        // RoutesClass.myCars: (context) => const MyCarsView(),
        // RoutesClass.bookService: (context) => const BookServiceView(),
        // RoutesClass.serviceHistory: (context) => const ServiceHistoryView(),
        // RoutesClass.notifications: (context) => const NotificationsView(),
        // RoutesClass.payment: (context) => const PaymentView(),
        // RoutesClass.feedback: (context) => const FeedbackView(),
        // RoutesClass.nearbyServices: (context) => const NearbyServicesView(),
      },
    );
  }
}
