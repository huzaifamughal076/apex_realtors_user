import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:apex_realtors_user/Screens/HomeScreen.dart';
import 'package:apex_realtors_user/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 3000,
        splash: "assets/images/apex_logo.png",
        nextScreen: LoginScreen(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Color(0xff616E8F),
    );
  }
}
