import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';
import 'package:responsive_dashborad/features/widgets/custom_text_field.dart';

class TitleTextFiled extends StatelessWidget {
  const TitleTextFiled({super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text("Customert Name", style: AppStyles.styleMedium16(context)),
        SizedBox(height: 12),
        CustomTextField(hint: hint,),
      ],
    );
  }
}
