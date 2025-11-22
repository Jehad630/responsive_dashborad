import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/models/drawerItemModel.dart';
import 'package:responsive_dashborad/features/widgets/active_drawer_item.dart';
import 'package:responsive_dashborad/features/widgets/in_active_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.draweritemModel,
    required this.isActive,
  });
  final DraweritemModel draweritemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(draweritemModel: draweritemModel)
        : InActiveDrawerItem(draweritemModel: draweritemModel);
  }
}
