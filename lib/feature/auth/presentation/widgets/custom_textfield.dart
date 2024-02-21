import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.textLable,
      this.onChanged,
      this.onFieldSubmitted,
      this.suffixIcon,
      this.obscureText});
  final String textLable;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final Widget? suffixIcon;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 24),
      child: TextFormField(
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        obscureText: obscureText ?? false,
        validator: (value) {
          if (value!.isEmpty) {
            return "this field is required";
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          labelText: textLable,
          labelStyle: CustomTextStyle.poppinso500Style18,
          border: getBorderStyle(),
          enabledBorder: getBorderStyle(),
          focusedBorder: getBorderStyle(),
        ),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(color: AppColors.grey),
  );
}
