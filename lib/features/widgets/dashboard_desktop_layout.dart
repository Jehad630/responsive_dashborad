import 'package:flutter/material.dart';
import 'package:responsive_dashborad/features/widgets/all_expenses_and__quick_invoice_section.dart';
import 'package:responsive_dashborad/features/widgets/custom_drawer.dart';
import 'package:responsive_dashborad/features/widgets/income_section.dart';
import 'package:responsive_dashborad/features/widgets/my_card_and_transaction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(width: 24),
          Expanded(flex: 2, child: AllExpenses_and_QuickInvoice_section()),
          SizedBox(width: 24),
          Expanded(
            child: Column(
              children: [
                SizedBox(height: 60),
                MyCardAndTransactionHistorySection(),
                SizedBox(height: 24),
                Expanded(child: IncomeSection()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
