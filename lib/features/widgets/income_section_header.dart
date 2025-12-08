import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text("Income", style: AppStyles.styleSemiBold20(context)),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.0, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadiusGeometry.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text("Monthly", style: AppStyles.styleMedium16(context)),
              SizedBox(width: 16),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Color(0xFFBEBEBE),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
