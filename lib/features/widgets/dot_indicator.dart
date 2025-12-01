import 'package:flutter/material.dart';
import 'package:responsive_dashborad/features/widgets/dashboard_desktop_layout.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.currentIndex});
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: CustomDotIndicator(isActive: index == currentIndex),
        ),
      ),
    );
  }
}
