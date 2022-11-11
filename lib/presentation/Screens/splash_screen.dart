import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:project_grad/presentation/Screens/on_boarding.dart';

import 'login_screen.dart';
class SplashScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash:Lottie.asset('assets/la.json'),
        splashIconSize: 250,
        duration: 3000,
        nextScreen:OnBoarding()
    );

  }
}
