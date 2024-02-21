// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:dalel/core/functions/navigations.dart';
import 'package:dalel/feature/on_bording/presentation/views/functions/on_boarding_visited.dart';

import 'package:dalel/feature/on_bording/presentation/widgets/custom_navbare_widget.dart';
import 'package:dalel/feature/on_bording/presentation/widgets/get_btn.dart';
import 'package:dalel/feature/on_bording/presentation/widgets/on_boarding_view_widget.dart';
import 'package:flutter/material.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final PageController controller = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 40,
              ),
              CustomNavBarWidget(
                onTap: () {
                  onBoardingVisiting();
                  customReplacementNavigate(context, "/signUp");
                },
              ),
              OnBoardWidget(
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              SizedBox(
                height: 88,
              ),
              // the get button hear
              GetButtons(
                controller: controller,
                currentIndex: currentIndex,
              ),
              SizedBox(
                height: 17,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
