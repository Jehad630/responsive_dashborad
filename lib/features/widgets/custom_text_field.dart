import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle: AppStyles.styleRegular16(context).copyWith(
          color: Color(0xFFAAAAAA),
        ),
        hint: Text(hint),
        fillColor: Color(0xFFFAFAFA),
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFFAFAFA)),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFFAFAFA)),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFFAFAFA)),
          borderRadius: BorderRadius.circular(12),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
