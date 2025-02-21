import 'package:carsapp/core/constens.dart';
import 'package:carsapp/core/widgets/MainScreen.dart';
import 'package:carsapp/features/Profile/presention/view/ProfileScreen.dart';
import 'package:carsapp/features/auth/presention/view/login_view.dart';
import 'package:carsapp/features/auth/presention/view/signup_view.dart';
import 'package:carsapp/features/home/presention/home_viwe.dart';
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
        RoutesClass.onboardingView: (context) => const OnboardingView(),

        RoutesClass.profile: (context) => const ProfileScreen(),
        RoutesClass.settings: (context) => const SettingsView(),
        RoutesClass.aboutUs: (context) => const AboutUsView(),
        RoutesClass.helpSupport: (context) => const HelpSupportView(),

        // Car Service Screens
        RoutesClass.myCars: (context) => const MyCarsView(),
        RoutesClass.bookService: (context) => const BookServiceView(),
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

// =================== Screens ===================
class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text('Settings Screen', style: TextStyle(fontSize: 22))),
    );
  }
}

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text('About Us Screen', style: TextStyle(fontSize: 22))),
    );
  }
}

class HelpSupportView extends StatelessWidget {
  const HelpSupportView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text('Help & Support Screen', style: TextStyle(fontSize: 22))),
    );
  }
}

class MyCarsView extends StatelessWidget {
  const MyCarsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
          Center(child: Text('My Cars Screen', style: TextStyle(fontSize: 22))),
    );
  }
}

class BookServiceView extends StatelessWidget {
  const BookServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text('Book Service Screen', style: TextStyle(fontSize: 22))),
    );
  }
}

class ServiceHistoryView extends StatelessWidget {
  const ServiceHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child:
              Text('Service History Screen', style: TextStyle(fontSize: 22))),
    );
  }
}

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text('Notifications Screen', style: TextStyle(fontSize: 22))),
    );
  }
}

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
          Center(child: Text('Payment Screen', style: TextStyle(fontSize: 22))),
    );
  }
}

class FeedbackView extends StatelessWidget {
  const FeedbackView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text('Feedback Screen', style: TextStyle(fontSize: 22))),
    );
  }
}

class NearbyServicesView extends StatelessWidget {
  const NearbyServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child:
              Text('Nearby Services Screen', style: TextStyle(fontSize: 22))),
    );
  }
}

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
