import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_header_text_widget.dart';
import 'package:dalel/feature/home/presentation/widgets/custom_category_listview.dart';
import 'package:flutter/material.dart';

class HistoricalSouvenirsSection extends StatelessWidget {
  const HistoricalSouvenirsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderTextWidget(text: AppStrings.historicalSouvenirs),
        SizedBox(height: 16),
        CustomCategoryListView(),
      ],
    );
  }
}
