import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/models/drawerItemModel.dart';
import 'package:responsive_dashborad/core/utils/app_images.dart';
import 'package:responsive_dashborad/features/widgets/drawer_item.dart';

class draweritemListView extends StatefulWidget {
  const draweritemListView({super.key});

  @override
  State<draweritemListView> createState() => _draweritemListViewState();
}

class _draweritemListViewState extends State<draweritemListView> {
  int Selectedindex = 0;

  final List<DraweritemModel> items = [
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
        return GestureDetector(
          onTap: () {
            if (Selectedindex != index) {
              setState(() {
                Selectedindex = index;
                print("Selectedindex $Selectedindex");
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
              draweritemModel: items[index],
              isActive: Selectedindex == index,
            ),
          ),
        );
      },
    );
  }
}
