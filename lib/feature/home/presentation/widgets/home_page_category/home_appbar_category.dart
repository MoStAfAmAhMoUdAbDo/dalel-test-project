import 'package:dalel/feature/home/presentation/widgets/home_view_app_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeAppBarCategory extends StatelessWidget {
  const HomeAppBarCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 28),
        CustomHomeViewAppBar(),
        SizedBox(height: 32),
      ],
    );
  }
}
