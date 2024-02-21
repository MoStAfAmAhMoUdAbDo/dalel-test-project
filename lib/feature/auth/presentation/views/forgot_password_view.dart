import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/feature/auth/presentation/widgets/custom_forgot_password_form.dart';
import 'package:dalel/feature/auth/presentation/widgets/forgot_password_image_widget.dart';
import 'package:dalel/feature/auth/presentation/widgets/forgot_password_subtitle_widget.dart';
import 'package:dalel/feature/auth/presentation/widgets/welcom_text_widget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 108,
            ),
          ),
          SliverToBoxAdapter(
            child: WelcomTextWidget(text: AppStrings.forgotPasswordPage),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          SliverToBoxAdapter(
            child: ForgotPasswordImageWidget(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          SliverToBoxAdapter(
            child: ForgotPAsswordSubTitleWidget(),
          ),
          SliverToBoxAdapter(
            child: CustomForgotPasswordForm(),
          )
        ],
      ),
    );
  }
}
