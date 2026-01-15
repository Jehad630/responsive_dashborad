import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/models/allexpenses_item_model.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';
import 'package:responsive_dashborad/features/widgets/all__expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({super.key, required this.itemModel});

  final AllexpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return AllExpensesItemCard(
      itemModel: itemModel,
      borderColor: const Color(0xFFF1F1F1),
      horizontalPadding: 10,
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.itemModel});

  final AllexpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return AllExpensesItemCard(
      itemModel: itemModel,
      borderColor: const Color(0xFF4DB7F2),
      horizontalPadding: 20,
    );
  }
}

class AllExpensesItemCard extends StatelessWidget {
  const AllExpensesItemCard({
    super.key,
    required this.itemModel,
    required this.borderColor,
    required this.horizontalPadding,
  });

  final AllexpensesItemModel itemModel;
  final Color borderColor;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor, width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: itemModel.image),
          const SizedBox(height: 34),
          Text(itemModel.title, style: AppStyles.styleMedium16(context)),
          const SizedBox(height: 8),
          Text(itemModel.date, style: AppStyles.styleRegular14(context)),
          const SizedBox(height: 8),
          Text(itemModel.price, style: AppStyles.styleSemiBold24(context)),
        ],
      ),
    );
  }
}
