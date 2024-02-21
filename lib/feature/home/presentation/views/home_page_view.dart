import 'package:dalel/feature/home/presentation/widgets/character_category.dart';
import 'package:dalel/feature/home/presentation/widgets/historical_souvenirs_category.dart';
import 'package:dalel/feature/home/presentation/widgets/history_period_category.dart';
import 'package:dalel/feature/home/presentation/widgets/home_appbar_category.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: HomeAppBarCategory()),
            SliverToBoxAdapter(child: HistoricalPeriodCategory()),
            SliverToBoxAdapter(child: CharacterCategory()),
            SliverToBoxAdapter(child: HistoricalSouvenirsSection()),
          ],
        ),
      ),
    );
  }
}
