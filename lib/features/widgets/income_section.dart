import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/size_config.dart';
import 'package:responsive_dashborad/features/widgets/IncomeChart.dart';
import 'package:responsive_dashborad/features/widgets/custom_back_ground_container.dart';
import 'package:responsive_dashborad/features/widgets/detalied_income_chart.dart';
import 'package:responsive_dashborad/features/widgets/income_detalis.dart';
import 'package:responsive_dashborad/features/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(children: [IncomeSectionHeader(), IncomeSectionBody()]),
    );
  }
}

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? Expanded(child: DetaliedIncomeChart())
        : Row(
            crossAxisAlignment: .center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetalis()),
            ],
          );
  }
}
