import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/models/Item_detalis_model.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';

class ItemsDetalis extends StatelessWidget {
  const ItemsDetalis({super.key, required this.item});
  
  final ItemDetalisModel item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(shape: OvalBorder(), color: item.color),
      ),
      title: Text(item.title, style: AppStyles.styleRegular16(context)),
      trailing: Text(item.value, style: AppStyles.styleMedium16(context)),
    );
  }
}
