import 'package:fixit_app/core/common/widgets/widgets_export.dart';
import 'package:fixit_app/core/res/res_export.dart';
import 'package:fixit_app/src/authentication/presentation/widgets/phone_number_input_field.dart';
import 'package:flutter/material.dart';
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
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
