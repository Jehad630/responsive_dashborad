import 'package:flutter/material.dart';
import 'package:responsive_dashborad/features/widgets/all__expenses.dart';
import 'package:responsive_dashborad/features/widgets/quick_invoice.dart';

class AllExpenses_and_QuickInvoice_section extends StatelessWidget {
  const AllExpenses_and_QuickInvoice_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ///SizedBox(height: 40),
          All_Expenses(),
          SizedBox(height: 24),
          QuickInvoice(),
        ],
      ),
    );
  }
}
