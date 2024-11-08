import 'package:fixit_app/src/onboarding/presentation/widgets/next_onboardingscren_button.dart';
import 'package:flutter/material.dart';
import 'package:fixit_app/core/res/res_export.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({
    super.key,
    required this.imagePath,
    required this.tagLine,
    required this.serviceMessage,
    required this.routeName,
    required this.stepPercentage,
  });
  final String imagePath;
  final String tagLine;
  final String serviceMessage;
  final String routeName;

  ///This is for taking percentage of onboarding completed.
  final double stepPercentage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(imagePath),
          const SizedBox(
            height: 40,
          ),
          Text(
            tagLine,
            style: AppTextStyles.dmSans20Bold(),
          ),
          const SizedBox(
            height: 16,
          ),
          RichText(
            text: TextSpan(
                text: serviceMessage,
                style: AppTextStyles.dmSans14Regular()
                    .copyWith(color: AppColors.text500),
                children: [
                  TextSpan(
                      text: 'FIXIT',
                      style: AppTextStyles.dmSans20Bold()
                          .copyWith(color: AppColors.primary600)),
                ]),
          ),
          const SizedBox(
            height: 40,
          ),
          NextOnBoardingScreenButton(
            routeName: routeName,
            stepPercentage: stepPercentage,
          )
        ],
      ),
    );
  }
}
