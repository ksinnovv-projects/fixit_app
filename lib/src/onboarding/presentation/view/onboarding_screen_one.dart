import 'package:fixit_app/core/res/res_export.dart';
import 'package:fixit_app/core/services/services_export.dart';
import 'package:fixit_app/src/onboarding/presentation/widgets/onboarding_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenOne extends StatelessWidget {
  const OnBoardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    OnBoardingScreen(imagePath: ImageConstants.onboardingScreenOne, 
    tagLine: "Customer satisfaction is our priority", 
    serviceMessage: "Wash your Car by ", routeName: RouteName.onBoardingScreenTwo, 
    stepPercentage: 40);
    
  }
}
