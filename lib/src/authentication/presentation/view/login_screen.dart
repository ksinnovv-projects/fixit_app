import 'package:fixit_app/core/common/widgets/widgets_export.dart';
import 'package:fixit_app/core/res/res_export.dart';
import 'package:fixit_app/core/services/router.dart';
import 'package:fixit_app/core/services/services_export.dart';
import 'package:fixit_app/src/authentication/presentation/widgets/phone_number_input_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(ImageConstants.loginNumberInput),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Welcome to Fixit",
              style: AppTextStyles.dmSans32Bold()
                  .copyWith(color: AppColors.primary600),
            ),
            const SizedBox(
              height: 20,
            ),
            PhoneNumberInputField(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomElevatedButton(
                text: "Send OTP",
                onPressed: () {
                  context.go(RouteName.otpVerifyScreen);
                },
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "By Signing in, I accept the",
              style: AppTextStyles.roboto12Regular(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    //TODO:: OnPressed Function
                    onPressed: () {},
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: Text(
                      "Terms & Conditions",
                      style: AppTextStyles.roboto12Regular()
                          .copyWith(color: AppColors.primary600),
                    )),
                Text(
                  " and ",
                  style: AppTextStyles.roboto12Regular(),
                ),
                TextButton(
                    //TODO:: OnPressed Function
                    onPressed: () {},
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: Text(
                      "Privacy Policy",
                      style: AppTextStyles.roboto12Regular()
                          .copyWith(color: AppColors.primary600),
                    ))
              ],
            ),

          ],
        ),
      ),
    );
  }
}
