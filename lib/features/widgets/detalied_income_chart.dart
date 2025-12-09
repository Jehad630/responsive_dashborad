import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';

class DetaliedIncomeChart extends StatefulWidget {
  const DetaliedIncomeChart({super.key});

  @override
  State<DetaliedIncomeChart> createState() => _DetaliedIncomeChartState();
}

class _DetaliedIncomeChartState extends State<DetaliedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, p1) {
          activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          value: 40,
          title: "40%",
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Colors.white),
          radius: activeIndex == 0 ? 60 : 50,
          color: Color(0xff208bc7),
        ),
        PieChartSectionData(
          value: 25,
          title: "25%",
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Colors.white),
          radius: activeIndex == 1 ? 60 : 50,
          color: Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          value: 15,
          title: "15%",
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Colors.white),
          radius: activeIndex == 2 ? 60 : 50,
          color: Color(0xFF064060),
        ),
        PieChartSectionData(
          value: 22,
          title: "22%",
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Colors.white),
          radius: activeIndex == 3 ? 60 : 50,
          color: Color(0xFFE2DECD),
        ),
      ],
      sectionsSpace: 0,
    );
  }
}
