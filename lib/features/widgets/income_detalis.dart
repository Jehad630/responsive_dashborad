import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/models/Item_detalis_model.dart';
import 'package:responsive_dashborad/features/widgets/items_detalis.dart';

class IncomeDetalis extends StatelessWidget {
  const IncomeDetalis({super.key});
  static final List<ItemDetalisModel> items = [
    ItemDetalisModel(
      title: "Design Service",
      value: "40%",
      color: Color(0xff208bc7),
    ),
    ItemDetalisModel(
      title: "Design product",
      value: "25%",
      color: Color(0xFF4DB7F2),
    ),
    ItemDetalisModel(
      title: "Product royalty",
      value: "20%",
      color: Color(0xFF064060),
    ),
    ItemDetalisModel(title: "other", value: "22%", color: Color(0xFFE2DECD)),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((item) => ItemsDetalis(item: item)).toList(),
    );
  }
}
