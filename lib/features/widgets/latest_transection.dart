import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';
import 'package:responsive_dashborad/features/widgets/latest_transection__list_view.dart';
import 'package:responsive_dashborad/features/widgets/quick__invoice_form.dart';

class Latest_transection extends StatelessWidget {
  const Latest_transection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text("Latest Transection", style: AppStyles.styleMedium16(context)),
        SizedBox(height: 16),
        Latest_transection_ListView(),
        Divider(height: 48, color: Colors.grey),
        Quick_Invoice_form(),
      ],
    );
  }
}
