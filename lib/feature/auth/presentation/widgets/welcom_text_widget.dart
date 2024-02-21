import 'package:dalel/core/utils/app_strings_style.dart';
import 'package:flutter/material.dart';

class WelcomTextWidget extends StatelessWidget {
  const WelcomTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        text,
        style: CustomTextStyle.poppinso600Style28,
      ),
    );
  }
}
