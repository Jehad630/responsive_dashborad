import 'package:flutter/material.dart';
import 'package:responsive_dashborad/features/widgets/custome__button.dart';
import 'package:responsive_dashborad/features/widgets/title_text_filed.dart';

class Quick_Invoice_form extends StatelessWidget {
  const Quick_Invoice_form({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextFiled(
                title: 'Customer Name',
                hint: 'Type Customer Name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextFiled(
                title: 'Customer Email',
                hint: 'Type Customer Email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextFiled(title: 'Item Name', hint: 'Type Item Name'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextFiled(title: 'Item Amount', hint: 'SAR'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: Custome_Button(
                title: "Send Money",
                textColor: Color(0xFF4DB7F2),
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(height: 24),
            Expanded(child: Custome_Button(title: "Add more details")),
          ],
        ),
      ],
    );
  }
}
