import 'package:dalel/feature/home/presentation/widgets/historical_period_item_widget.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodsWidget extends StatelessWidget {
  const HistoricalPeriodsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HistoricalPeriodItemWidget(),
        HistoricalPeriodItemWidget(),
      ],
    );
  }
}
