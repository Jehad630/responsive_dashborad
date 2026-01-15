import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';
import 'package:responsive_dashborad/features/widgets/transaction_history__list_view.dart';
import 'package:responsive_dashborad/features/widgets/transaction_history_header.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        Text(
          "1 Dec 2025",
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Color(0xFFAAAAAA)),
        ),
        const TransactionHistory_ListView(),
      ],
    );
  }
}
