import 'package:flutter/material.dart';
import 'package:responsive_dashborad/features/widgets/all_expenses_and__quick_invoice_section.dart';
import 'package:responsive_dashborad/features/widgets/custom_back_ground_container.dart';
import 'package:responsive_dashborad/features/widgets/custom_drawer.dart';
import 'package:responsive_dashborad/features/widgets/income_section_header.dart';
import 'package:responsive_dashborad/features/widgets/my_card_and_transaction_history_section.dart';

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

          Expanded(child: IncomeSection()),
        ],
      ),
    );
  }
}

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
        ],
      ),
    );
  }
}
