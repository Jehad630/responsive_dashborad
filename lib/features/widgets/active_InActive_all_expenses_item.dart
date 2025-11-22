import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/models/allexpenses_item_model.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';
import 'package:responsive_dashborad/features/widgets/all__expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({super.key, required this.itemModel});

  final AllexpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xFFF1F1F1), width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          All_Expenses_item_header(image: itemModel.image),
          SizedBox(height: 34),
          Text(itemModel.title, style: AppStyles.styleMedium16(context)),
          SizedBox(height: 8),
          Text(itemModel.date, style: AppStyles.styleRegular14(context)),
          SizedBox(height: 8),
          Text(itemModel.price, style: AppStyles.styleSemiBold24(context)),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.itemModel});

  final AllexpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xFF4DB7F2), width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          All_Expenses_item_header(image: itemModel.image),
          SizedBox(height: 34),
          Text(itemModel.title, style: AppStyles.styleMedium16(context)),
          SizedBox(height: 8),
          Text(itemModel.date, style: AppStyles.styleRegular14(context)),
          SizedBox(height: 8),
          Text(itemModel.price, style: AppStyles.styleSemiBold24(context)),
        ],
      ),
    );
  }
}
