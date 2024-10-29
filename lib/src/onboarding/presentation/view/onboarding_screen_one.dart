import 'package:flutter/material.dart';
import 'package:fixit_app/core/res/res_export.dart';

class OnBoardingScreenOne extends StatelessWidget {
  const OnBoardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/onboarding_1.png"),
          Text(
            "Customer satisfaction is our priority",
            style: AppTextStyles.dmSans20Bold(),
          )
        ],
      ),
    );
  }
}
