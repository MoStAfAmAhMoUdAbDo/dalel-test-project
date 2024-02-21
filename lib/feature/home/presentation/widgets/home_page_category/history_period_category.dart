import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_header_text_widget.dart';
import 'package:dalel/feature/home/presentation/widgets/historical_period_widget.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodCategory extends StatelessWidget {
  const HistoricalPeriodCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderTextWidget(text: AppStrings.historicalPeriods),
        SizedBox(height: 16),
        HistoricalPeriodsWidget(),
        SizedBox(height: 32),
      ],
    );
  }
}
