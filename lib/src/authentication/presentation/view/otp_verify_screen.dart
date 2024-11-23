import 'package:fixit_app/core/common/widgets/custom_elevated_button.dart';
import 'package:fixit_app/core/res/res_export.dart';
import 'package:fixit_app/core/services/route_names.dart';
import 'package:fixit_app/core/services/router.dart';
import 'package:fixit_app/src/authentication/presentation/widgets/otp_input_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(ImageConstants.otpVerifyImage),
              const SizedBox(
                height: 16,
              ),
              Text(
                "OTP Verification",
                style: AppTextStyles.dmSans32Bold()
                    .copyWith(color: AppColors.primary600),
              ),
              Text(
                "Enter the 4 digit code sent to ",
                style: AppTextStyles.roboto12Regular(),
              ),
              OtpInputField(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomElevatedButton(
                  text: "Verify Now",
                  onPressed: () {
                    context.go(RouteName.homeScreen);
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't receive any code ?",
                    style: AppTextStyles.roboto12Regular(),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "RESEND CODE",
                        style: AppTextStyles.roboto12Regular()
                            .copyWith(color: AppColors.primary600),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
