import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/core/functions/navigations.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/feature/auth/presentation/auth_cubit/bloc/auth_bloc.dart';
import 'package:dalel/feature/auth/presentation/widgets/custom_textfield.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomForgotPasswordForm extends StatelessWidget {
  const CustomForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is ResetPasswordSuccessState) {
          showToast("Check Your Email To Reset Your Password");
          customReplacementNavigate(context, "/signIn");
        } else if (state is ResetPasswordErrorState) {
          showToast(state.errorMessage);
        }
      },
      builder: (context, state) {
        AuthBloc auth = BlocProvider.of<AuthBloc>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: auth.forgotPasswordKey,
            child: Column(
              children: [
                CustomTextField(
                  textLable: AppStrings.emailAddress,
                  onChanged: (emailAddress) {
                    auth.emailAddress = emailAddress;
                  },
                ),
                const SizedBox(
                  height: 129,
                ),
                state is ResetPasswordLoadingState
                    ? CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      )
                    : CustomButton(
                        btnName: AppStrings.sendResetPasswordLink,
                        onPressed: () {
                          if (auth.forgotPasswordKey.currentState!.validate()) {
                            auth.add(ResetPasswordEvent());
                          }
                        },
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
