import 'package:dalel/core/functions/navigations.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/feature/auth/presentation/widgets/custom_signin_form.dart';
import 'package:dalel/feature/auth/presentation/widgets/have_account_widget.dart';
import 'package:dalel/feature/auth/presentation/widgets/welcom_banner.dart';
import 'package:dalel/feature/auth/presentation/widgets/welcom_text_widget.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: WelcomBanner(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          const SliverToBoxAdapter(
            child: WelcomTextWidget(text: AppStrings.welcomeBack),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomSignInForm(),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: HaveAnAccount(
              text1: AppStrings.dontHaveAnAccount,
              text2: AppStrings.signUp,
              onTap: () {
                customReplacementNavigate(context, "/signUp");
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
        ],
      ),
    );
  }
}
