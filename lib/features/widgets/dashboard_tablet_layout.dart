import 'package:flutter/material.dart';
import 'package:responsive_dashborad/features/widgets/all_expenses_and__quick_invoice_section.dart';
import 'package:responsive_dashborad/features/widgets/custom_drawer.dart';
import 'package:responsive_dashborad/features/widgets/income_section.dart';
import 'package:responsive_dashborad/features/widgets/my_card_and_transaction_history_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 24),
        Expanded(
          flex: 3,
          child: dashborad_mobile_layout(),
        ),
        SizedBox(width: 24),
      ],
    );
  }
}

class dashborad_mobile_layout extends StatelessWidget {
  const dashborad_mobile_layout({
    super.key,
  });

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
