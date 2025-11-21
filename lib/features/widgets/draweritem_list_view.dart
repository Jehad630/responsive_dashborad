import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/models/drawerItemModel.dart';
import 'package:responsive_dashborad/core/utils/app_images.dart';
import 'package:responsive_dashborad/features/widgets/drawer_item.dart';

class draweritemListView extends StatelessWidget {
  const draweritemListView({super.key});

  static const List<DraweritemModel> items = [
    DraweritemModel(title: "DashBoard", image: Assets.imagesDashboard),
    DraweritemModel(title: "My transaction", image: Assets.imagesMyTransctions),
    DraweritemModel(title: "Statistics", image: Assets.imagesStatistics),
    DraweritemModel(title: "Wallet Account", image: Assets.imagesWalletAccount),
    DraweritemModel(title: "My Investments", image: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: DrawerItem(draweritemModel: items[index]),
        );
      },
    );
  }
}
