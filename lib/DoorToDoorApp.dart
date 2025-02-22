import 'package:carsapp/core/constens.dart';
import 'package:carsapp/core/widgets/MainScreen.dart';
import 'package:carsapp/features/Notifications/presention/views/NotificationsView.dart';
import 'package:carsapp/features/Onboarding/presention/views/Onboarding.dart';
import 'package:carsapp/features/Payment/presention/views/PaymentView.dart';
import 'package:carsapp/features/Profile/presention/views/AboutUsView.dart';
import 'package:carsapp/features/Profile/presention/views/FeedbackView.dart';
import 'package:carsapp/features/Profile/presention/views/HelpSupportView.dart';
import 'package:carsapp/features/Profile/presention/views/ProfileScreen.dart';
import 'package:carsapp/features/Profile/presention/views/SettingsView.dart';
import 'package:carsapp/features/Services/presention/views/BookServiceView.dart';
import 'package:carsapp/features/Services/presention/views/NearbyServicesView.dart';
import 'package:carsapp/features/Services/presention/views/ServiceHistoryView.dart';
import 'package:carsapp/features/auth/presention/view/login_view.dart';
import 'package:carsapp/features/auth/presention/view/signup_view.dart';
import 'package:carsapp/features/home/presention/views/home_viwe.dart';
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
        RoutesClass.splash: (context) => const SplashView(),
        RoutesClass.login: (context) => const LoginView(),
        RoutesClass.signUp: (context) => const SignUpView(),
        RoutesClass.home: (context) => const HomeView(),
        RoutesClass.onboardingView: (context) => const OnboardingView(),
        RoutesClass.profile: (context) => const ProfileScreen(),
        RoutesClass.settings: (context) => const SettingsView(),
        RoutesClass.aboutUs: (context) => const AboutUsView(),
        RoutesClass.helpSupport: (context) => const HelpSupportView(),
        RoutesClass.bookService: (context) => BookServiceView(),
        RoutesClass.serviceHistory: (context) => const ServiceHistoryView(),
        RoutesClass.notifications: (context) => const NotificationsView(),
        RoutesClass.payment: (context) => const PaymentView(),
        RoutesClass.feedback: (context) => const FeedbackView(),
        RoutesClass.nearbyServices: (context) => const NearbyServicesView(),
        RoutesClass.MainScreen: (context) => const MainScreen(),
      },
    );
  }
}
