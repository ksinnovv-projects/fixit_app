import 'package:fixit_app/core/res/res_export.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpInputField extends StatefulWidget {
  const OtpInputField({super.key});

  @override
  State<OtpInputField> createState() => _OtpInputFieldState();
}

class _OtpInputFieldState extends State<OtpInputField> {
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      mainAxisAlignment: MainAxisAlignment.center,
      cursorColor: AppColors.primary600,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        inactiveColor: AppColors.primary600,
        inactiveFillColor: AppColors.primary50,
        activeColor: AppColors.primary600,
        fieldOuterPadding: EdgeInsets.symmetric(horizontal: 8),
        borderRadius: BorderRadius.circular(4.0),
        fieldHeight: 48,
        fieldWidth: 48,
      ),
    );
  }
}
