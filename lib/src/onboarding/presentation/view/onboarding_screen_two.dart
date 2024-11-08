import 'package:fixit_app/core/res/res_export.dart';
import 'package:fixit_app/core/services/services_export.dart';
import 'package:fixit_app/src/onboarding/presentation/widgets/onboarding_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenTwo extends StatelessWidget {
  const OnBoardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     OnBoardingScreen(imagePath: ImageConstants.onBoardingScreenTwo, 
    tagLine: "You say , we will do it", 
    serviceMessage: "Clean your Space by ", routeName: RouteName.onBoardingScreenThree, 
    stepPercentage: 75);
    
  }
    
}
  