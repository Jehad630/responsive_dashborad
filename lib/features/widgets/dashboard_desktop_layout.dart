import 'package:flutter/material.dart';
import 'package:responsive_dashborad/features/widgets/all_expenses_and__quick_invoice_section.dart';
import 'package:responsive_dashborad/features/widgets/custom_drawer.dart';
import 'package:responsive_dashborad/features/widgets/my_card_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(width: 32),
          Expanded(flex: 2, child: AllExpenses_and_QuickInvoice_section()),

          Expanded(child: MyCardSection()),
        ],
      ),
    );
  }
}

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive ? 32 : 8,
      height: 8,
      decoration: ShapeDecoration(
        color: isActive ? const Color(0xFF4DB7F2) : const Color(0xFFE7E7E7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
      duration: Duration(microseconds: 300),
    );
  }
}
