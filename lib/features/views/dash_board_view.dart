import 'package:flutter/material.dart';
import 'package:responsive_dashborad/features/views/adaptive_layout.dart';
import 'package:responsive_dashborad/features/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashborad/features/widgets/my_card_section.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MyCardSection(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
