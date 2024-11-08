import 'package:fixit_app/core/common/widgets/widgets_export.dart';
import 'package:fixit_app/core/res/res_export.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NextOnBoardingScreenButton extends StatelessWidget {
  const NextOnBoardingScreenButton(
      {super.key, required this.routeName, required this.stepPercentage});
  final String routeName;
  final double stepPercentage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        MultiColorCircle(
          colors: [AppColors.primary600, AppColors.text200],
          percentages: [stepPercentage, 100.0 - stepPercentage],
          strokeWidth: 2,
        ),
        Center(
          child: CircleAvatar(
            radius: 32,
            backgroundColor: AppColors.primary600,
            child: IconButton(
                onPressed: () {
                  context.go(routeName);
                },
                icon: Image.asset(ImageConstants.forwardArrow)),
          ),
        )
      ],
    );
  }
}
