import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';

class Custome_Button extends StatelessWidget {
  const Custome_Button({
    super.key,
    required this.title,
    this.backgroundColor,
    this.textColor,
  });
  final String title;
  final Color? backgroundColor, textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: backgroundColor ?? Color(0xFF4DB7F2),
          elevation: 0,
        ),
        child: Text(
          title,
          style: AppStyles.styleSemiBold18(
            context,
          ).copyWith(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
