import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashborad/core/models/drawerItemModel.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.draweritemModel});

  final DraweritemModel draweritemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(draweritemModel.image),
      title: Text(
        draweritemModel.title,
        style: AppStyles.styleSemiBold16(context),
      ),
      trailing: Container(width: 3.27, color: Color(0xFF4EB7F2)),
    );
  }
}
