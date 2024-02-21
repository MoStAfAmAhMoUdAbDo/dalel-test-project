import 'package:dalel/core/utils/app_strings_style.dart';
import 'package:flutter/material.dart';

class CustomHeaderTextWidget extends StatelessWidget {
  const CustomHeaderTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomTextStyle.poppinso400Style20,
    );
  }
}
