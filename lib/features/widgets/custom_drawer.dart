import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_images.dart';
import 'package:responsive_dashborad/features/widgets/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: UserInfo(
        image: Assets.imagesAvatar3,
        title: "jehad",
        subtitle: "devjehad630@gmail.com",
      ),
    );
  }
}
