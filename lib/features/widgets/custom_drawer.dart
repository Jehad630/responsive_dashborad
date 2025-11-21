import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_images.dart';
import 'package:responsive_dashborad/features/widgets/draweritem_list_view.dart';
import 'package:responsive_dashborad/features/widgets/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserInfo(
            image: Assets.imagesAvatar3,
            title: "jehad fostok",
            subtitle: "devjehad630@gmail.com",
          ),
          const SizedBox(height: 8),
          draweritemListView(),
        ],
      ),
    );
  }
}
