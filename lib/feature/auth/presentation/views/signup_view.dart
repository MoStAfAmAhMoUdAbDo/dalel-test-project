import 'package:dalel/core/functions/navigations.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/feature/auth/presentation/widgets/custom_signup_form.dart';
import 'package:dalel/feature/auth/presentation/widgets/have_account_widget.dart';
import 'package:dalel/feature/auth/presentation/widgets/welcom_text_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 148,
              ),
            ),
            const SliverToBoxAdapter(
              child: WelcomTextWidget(
                text: AppStrings.welcome,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomSignupForm(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: HaveAnAccount(
                text1: AppStrings.alreadyHaveAnAccount,
                text2: AppStrings.signIn,
                onTap: () {
                  customReplacementNavigate(context, "/signIn");
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
      ),
    );
  }
}
