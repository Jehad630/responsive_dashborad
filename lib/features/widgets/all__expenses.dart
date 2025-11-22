import 'package:flutter/material.dart';
import 'package:responsive_dashborad/features/widgets/all__expenses_header.dart';

class All_Expenses extends StatelessWidget {
  const All_Expenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
      child: Column(children: [All_Expenses_header()]),
    );
  }
}
