import 'package:carsapp/core/constens.dart';
import 'package:flutter/material.dart';

class SplashDurationFunc {
  static void navigateAfterDelay(BuildContext context, Duration duration) {
    Future.delayed(duration, () {
      Navigator.pushReplacementNamed(context, RoutsClass.signup);
    });
  }
}
