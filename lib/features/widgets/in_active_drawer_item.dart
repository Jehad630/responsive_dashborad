import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashborad/core/models/drawerItemModel.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.draweritemModel});

  final DraweritemModel draweritemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(draweritemModel.image),
      title: Text(
        draweritemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
    );
  }
}
