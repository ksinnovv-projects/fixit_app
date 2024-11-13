import 'package:fixit_app/core/res/res_export.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton({super.key, required this.text, this.onPressed});
  final String text;
  final Function()? onPressed;

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary600,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0))),
          onPressed: widget.onPressed,
          child: Text(
            widget.text,
            style: AppTextStyles.roboto16SemiBold()
                .copyWith(color: AppColors.white),
          )),
    );
  }
}
