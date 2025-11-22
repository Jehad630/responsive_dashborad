import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class All_Expenses_item_header extends StatelessWidget {
  const All_Expenses_item_header({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: EdgeInsets.all(14),
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xFFFAFAFA),
          ),
          child: SvgPicture.asset(image),
        ),
        Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xFF064061),
          ),
        ),
      ],
    );
  }
}
