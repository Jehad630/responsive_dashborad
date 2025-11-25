import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashborad/features/widgets/my_card.dart';

class MyCards_view extends StatelessWidget {
  const MyCards_view({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      scrollDirection: Axis.horizontal,
      children: List.generate(3, (index) => const MyCard()),
    );
  }
}
