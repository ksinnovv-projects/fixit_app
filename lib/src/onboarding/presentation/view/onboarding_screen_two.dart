import 'package:flutter/material.dart';

class OnBoardingScreenTwo extends StatelessWidget {
  const OnBoardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Column(
        children: [Image.asset("assets/images/onboarding_2.png")],
      ),
    );
  }
}