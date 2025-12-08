import 'package:flutter/material.dart';
import 'package:responsive_dashborad/features/views/adaptive_layout.dart';
import 'package:responsive_dashborad/features/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashborad/features/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const dashborad_mobile_layout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
