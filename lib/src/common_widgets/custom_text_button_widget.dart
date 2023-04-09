import 'package:flutter/material.dart';
import 'package:sarang_dating_app/src/theme_manager/style_manager.dart';

class CustomTextButtonWidget extends StatelessWidget {
  const CustomTextButtonWidget(
      {super.key, required this.title, required this.onPressed});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: getBlack60TextStyle().copyWith(
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
