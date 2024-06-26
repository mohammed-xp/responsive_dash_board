import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;

          setState(() {});
        },
      ),
      // centerSpaceRadius: 30,
      sections: [
        PieChartSectionData(
          value: 40,
          radius: activeIndex == 0 ? 35 : 30,
          color: const Color(0xff208CC8),
          showTitle: false,
        ),
        PieChartSectionData(
          value: 25,
          radius: activeIndex == 1 ? 35 : 30,
          color: const Color(0xff4EB7F2),
          showTitle: false,
        ),
        PieChartSectionData(
          value: 20,
          radius: activeIndex == 2 ? 35 : 30,
          color: const Color(0xff064061),
          showTitle: false,
        ),
        PieChartSectionData(
          value: 22,
          radius: activeIndex == 3 ? 35 : 30,
          color: const Color(0xffE2DECD),
          showTitle: false,
        ),
      ],
    );
  }
}
