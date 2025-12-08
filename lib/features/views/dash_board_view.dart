import 'package:flutter/material.dart';
import 'package:responsive_dashborad/features/views/adaptive_layout.dart';
import 'package:responsive_dashborad/features/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashborad/features/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashborad/features/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
            elevation: 0,
            backgroundColor: Color(0xFFFAFAFA),
            leading: Icon(Icons.menu))
          : null,
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
