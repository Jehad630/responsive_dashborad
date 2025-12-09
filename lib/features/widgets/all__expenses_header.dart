import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';
import 'package:responsive_dashborad/features/widgets/range_options.dart';

class All_Expenses_header extends StatelessWidget {
  const All_Expenses_header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("All Expenses", style: AppStyles.styleSemiBold20(context)),
        Spacer(),
        RangeOptions(),
      ],
    );
  }
}
