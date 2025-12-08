import 'package:flutter/material.dart';
import 'package:responsive_dashborad/features/widgets/custom_back_ground_container.dart';
import 'package:responsive_dashborad/features/widgets/my_card_section.dart';
import 'package:responsive_dashborad/features/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(height: 40, color: Color(0xffF1F1F1)),
          TransactionHistory(),
        ],
      ),
    );
  }
}
