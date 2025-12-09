import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/models/transaction_model.dart';
import 'package:responsive_dashborad/features/widgets/transaction_history_items.dart';

class TransactionHistory_ListView extends StatelessWidget {
  const TransactionHistory_ListView({super.key});
  static List<TransactionModel> items = [
    TransactionModel(
      title: "Cash Withdrawal",
      date: "13 Nov 2025",
      amount: r"$20,129",
      isWithdraw: true,
    ),
    TransactionModel(
      title: "EasyBook App Project",
      date: "16 Nov 2025",
      amount: r"$10,500",
      isWithdraw: false,
    ),
    TransactionModel(
      title: "Weather App Project",
      date: "13 Nov 2025",
      amount: r"$2500",
      isWithdraw: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((item) => TransactionHistoryItems(item: item))
          .toList(),
    );
  }
}
