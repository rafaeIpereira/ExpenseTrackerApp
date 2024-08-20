import 'package:expense_tracker_app/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
          backgroundColor: Colors.white,
          onInit: () {
            debugPrint("On Init");
          },
          onEnd: () {
            debugPrint("On End");
          },
          childWidget: SizedBox(
            height: 200,
            width: 200,
            child: Image.asset("assets/logo_app.png"),
          ),
          onAnimationEnd: () => debugPrint("On Fade In End"),
          nextScreen: const OnboardingPage(),
          duration: const Duration(milliseconds: 1500),
        );
  }
}