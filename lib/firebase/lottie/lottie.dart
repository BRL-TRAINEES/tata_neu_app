import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tata_neu/firebase/login%20system/wrapper.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        'lib/firebase/lottie/neu_image.jpeg',
        fit: BoxFit.cover,
      ),
      nextScreen: Wrapper(),
      splashIconSize: 150,
      duration: 2800,
      pageTransitionType: PageTransitionType.fade,
      backgroundColor: Colors.white,
    );
  }
}
