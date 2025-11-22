import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/models/allexpenses_item_model.dart';
import 'package:responsive_dashborad/features/widgets/active_InActive_all_expenses_item.dart';

class All_Expenses_item extends StatelessWidget {
  const All_Expenses_item({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });
  final AllexpensesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return InActiveAllExpensesItem(itemModel: itemModel);
  }
}


