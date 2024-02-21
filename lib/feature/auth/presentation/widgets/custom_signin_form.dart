import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/core/functions/navigations.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/feature/auth/presentation/auth_cubit/bloc/auth_bloc.dart';
import 'package:dalel/feature/auth/presentation/widgets/custom_textfield.dart';
import 'package:dalel/feature/auth/presentation/widgets/forgot_password_text_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is SignInSuccessState) {
          if (FirebaseAuth.instance.currentUser!.emailVerified) {
            showToast("Welcome Back!");
            customReplacementNavigate(context, "/homeNavBar");
          } else {
            showToast("Please Verify Your Account!");
          }
        } else if (state is SignInErrorState) {
          showToast(state.errorMessage);
        }
      },
      builder: (context, state) {
        AuthBloc auth = BlocProvider.of<AuthBloc>(context);
        return Form(
          key: auth.signInFormKey,
          child: Column(
            children: [
              CustomTextField(
                textLable: AppStrings.emailAddress,
                onChanged: (emailAddress) {
                  auth.emailAddress = emailAddress;
                },
              ),
              CustomTextField(
                textLable: AppStrings.password,
                onChanged: (password) {
                  auth.password = password;
                },
                suffixIcon: IconButton(
                  icon: Icon(
                    auth.obscurePasswordTextValue == true
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  onPressed: () {
                    auth.add(ObscurePasswordTextUpdateEvent());
                  },
                ),
                obscureText: auth.obscurePasswordTextValue,
              ),
              const SizedBox(
                height: 16,
              ),
              const ForgetPasswordTextWidget(),
              const SizedBox(
                height: 102,
              ),
              state is SignInLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustomButton(
                      btnName: AppStrings.signIn,
                      onPressed: () {
                        if (auth.signInFormKey.currentState!.validate()) {
                          auth.add(SignInEvent());
                        }
                      },
                    ),
            ],
          ),
        );
      },
    );
  }
}
