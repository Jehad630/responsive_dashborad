import 'package:flutter/material.dart';
import 'package:responsive_dashborad/features/views/adaptive_layout.dart';
import 'package:responsive_dashborad/features/widgets/custom_drawer.dart';
import 'package:responsive_dashborad/features/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashborad/features/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashborad/features/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> Scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Scaffoldkey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: Color(0xFFFAFAFA),
              leading: IconButton(
                onPressed: () {
                  Scaffoldkey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < 800 ? CustomDrawer() : null,
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
