import 'package:fixit_app/core/res/res_export.dart';
import 'package:fixit_app/core/services/route_names.dart';
import 'package:fixit_app/src/onboarding/presentation/widgets/onboarding_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenThree extends StatelessWidget {
  const OnBoardingScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingScreen(
        imagePath: ImageConstants.onBoardingScreenThree,
        tagLine: "Your problem , our solution",
        serviceMessage: "Repair everything by ",
        routeName: RouteName.homeScreen,
        stepPercentage: 100);
  }
}
