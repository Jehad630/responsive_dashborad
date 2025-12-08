import 'package:flutter/material.dart';
import 'package:responsive_dashborad/features/widgets/IncomeChart.dart';
import 'package:responsive_dashborad/features/widgets/custom_back_ground_container.dart';
import 'package:responsive_dashborad/features/widgets/income_detalis.dart';
import 'package:responsive_dashborad/features/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          Row(
            crossAxisAlignment: .center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetalis()),
            ],
          ),
        ],
      ),
    );
  }
}
