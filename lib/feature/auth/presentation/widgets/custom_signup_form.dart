import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/core/functions/navigations.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/feature/auth/presentation/auth_cubit/bloc/auth_bloc.dart';
import 'package:dalel/feature/auth/presentation/widgets/custom_textfield.dart';
import 'package:dalel/feature/auth/presentation/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignupForm extends StatelessWidget {
  const CustomSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is SignupSuccessState) {
          showToast("Successfully plz check your email to verify your account");
          customReplacementNavigate(context, "/signIn");
        } else if (state is SignupErrorState) {
          showToast(state.errorMessage);
        }
      },
      builder: (context, state) {
        final auth = BlocProvider.of<AuthBloc>(context);
        return Form(
          key: auth.signUpFormKey,
          child: Column(
            children: [
              CustomTextField(
                textLable: AppStrings.fristName,
                onChanged: (firstName) {
                  auth.firstName = firstName;
                },
              ),
              CustomTextField(
                textLable: AppStrings.lastName,
                onChanged: (lastName) {
                  auth.lastName = lastName;
                },
              ),
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
              const TermsAndConditionsWidget(),
              const SizedBox(
                height: 82,
              ),
              state is SignupLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustomButton(
                      color: auth.termsAndConditionCheckBoxValue == false
                          ? AppColors.grey
                          : null,
                      btnName: AppStrings.signUp,
                      onPressed: () {
                        if (auth.termsAndConditionCheckBoxValue == true) {
                          if (auth.signUpFormKey.currentState!.validate()) {
                            auth.add(SignUpEvent());
                          }
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
