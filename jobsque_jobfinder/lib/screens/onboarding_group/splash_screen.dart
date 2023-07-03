
import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/onboarding_group/onboarding1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Onboarding1()));
      },
    );
    return Scaffold(
      body: Center(
        child: Stack(children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            maxRadius: 300,
            child: Image.asset(
              "assets/images/background_splash_screen.png",
            ),
          ),
          Positioned(
            top: 1,
            bottom: 1,
            left: 1,
            right: 1,
            child: Image.asset(
              "assets/images/spalsh_screen.png",
            ),
          ),
        ]),
      ),
    );
  }
}
