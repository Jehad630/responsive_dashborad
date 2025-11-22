import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/models/allexpenses_item_model.dart';
import 'package:responsive_dashborad/core/utils/app_images.dart';
import 'package:responsive_dashborad/features/widgets/all__expenses_header.dart';
import 'package:responsive_dashborad/features/widgets/all__expenses_item.dart';

class All_Expenses extends StatelessWidget {
  const All_Expenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
      child: Column(
        children: [
          All_Expenses_header(),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: All_Expenses_item(
                  isSelected: false,
                  itemModel: AllexpensesItemModel(
                    image: Assets.imagesBalance,
                    title: "Balance",
                    date: "April 2025",
                    price: r"$20,129",
                  ),
                ),
              ),
              Expanded(
                child: All_Expenses_item(
                  isSelected: false,
                  itemModel: AllexpensesItemModel(
                    image: Assets.imagesIncome,
                    title: "Income",
                    date: "April 2025",
                    price: r"$20,129",
                  ),
                ),
              ),
              Expanded(
                child: All_Expenses_item(
                  isSelected: true,
                  itemModel: AllexpensesItemModel(
                    image: Assets.imagesExpenses,
                    title: "Expenses",
                    date: "April 2025",
                    price: r"$20,129",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
