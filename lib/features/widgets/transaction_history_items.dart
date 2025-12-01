import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/models/transaction_model.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';

class TransactionHistoryItems extends StatelessWidget {
  const TransactionHistoryItems({super.key, required this.item});
  final TransactionModel item;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(item.title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(item.date, style: AppStyles.styleRegular16(context).copyWith(
          color: Color(0xFFAAAAAA)
        )),
        trailing: Text(
          item.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: item.isWithdraw ? Color(0xFFF3735E) : Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
