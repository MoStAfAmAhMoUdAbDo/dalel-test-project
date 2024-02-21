import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/feature/auth/presentation/auth_cubit/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => __CustomCheckBoxState();
}

class __CustomCheckBoxState extends State<CustomCheckBox> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      side: BorderSide(color: AppColors.grey),
      value: value,
      onChanged: (newValue) {
        setState(() {
          value = newValue!;
          BlocProvider.of<AuthBloc>(context).add(TermsAndConditionUpdateEvent(
              newValueOfConditionUpdate: newValue));
        });
      },
    );
  }
}
