import 'package:flutter/material.dart';
import 'package:responsive_dashborad/features/widgets/all_expenses_and__quick_invoice_section.dart';
import 'package:responsive_dashborad/features/widgets/income_section.dart';
import 'package:responsive_dashborad/features/widgets/my_card_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpenses_and_QuickInvoice_section(),
          SizedBox(width: 24),
          MyCardAndTransactionHistorySection(),
          SizedBox(width: 24),
          IncomeSection()
        ],
      ),
    );
  }
}