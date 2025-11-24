import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/models/user_info_model.dart';
import 'package:responsive_dashborad/core/utils/app_images.dart';
import 'package:responsive_dashborad/features/widgets/user_info.dart';

class Latest_transection_ListView extends StatelessWidget {
  const Latest_transection_ListView({super.key});

  static List<user_info_model> items = [
    user_info_model(
      image: Assets.imagesAvatar1,
      title: "Madrani Andi",
      subtitle: "MadraniAndi@gmail.com",
    ),
    user_info_model(
      image: Assets.imagesAvatar2,
      title: "Josua Nunito",
      subtitle: "JosuaNunito@gmail.com",
    ),
    user_info_model(
      image: Assets.imagesAvatar3,
      title: "Madrani Andi",
      subtitle: "MadraniAndi@gmail.com",
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        ...items.map((e) => IntrinsicWidth(child: UserInfo(userInfo: e))),
      ],),
    );/*
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return IntrinsicWidth(child: UserInfo(userInfo: items[index]));
        },
      ),
    );*/
  }
}
