import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/models/drawerItemModel.dart';
import 'package:responsive_dashborad/core/models/user_info_model.dart';
import 'package:responsive_dashborad/core/utils/app_images.dart';
import 'package:responsive_dashborad/features/widgets/draweritem_list_view.dart';
import 'package:responsive_dashborad/features/widgets/in_active_drawer_item.dart';
import 'package:responsive_dashborad/features/widgets/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfo(
              userInfo: user_info_model(
                image: Assets.imagesAvatar3,
                title: "jehad fostok",
                subtitle: "devjehad630@gmail.com",
              ),
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 8)),
          draweritemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveDrawerItem(
                  draweritemModel: DraweritemModel(
                    title: "Setting System",
                    image: Assets.imagesSettings,
                  ),
                ),
                InActiveDrawerItem(
                  draweritemModel: DraweritemModel(
                    title: "Logout account",
                    image: Assets.imagesLogout,
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
