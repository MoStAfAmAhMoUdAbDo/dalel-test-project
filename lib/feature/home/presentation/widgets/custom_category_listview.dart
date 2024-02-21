import 'package:dalel/feature/home/presentation/widgets/custom_category_listview_item.dart';
import 'package:flutter/material.dart';

class CustomCategoryListView extends StatelessWidget {
  const CustomCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        separatorBuilder: (context, int index) {
          return const SizedBox(width: 16);
        },
        itemBuilder: (BuildContext context, int index) {
          return const CustomCategoryListViewItem();
        },
        itemCount: 5,
      ),
    );
  }
}
