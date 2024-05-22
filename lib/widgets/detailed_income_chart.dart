import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import '../models/item_details_model.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key, required this.items});

  final List<ItemDetailsModel> items;

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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

      sections: widget.items.asMap().entries.map(
        (e) {
          int index = e.key;
          var value = e.value;

          bool isActive = activeIndex == index;

          return PieChartSectionData(
            title: isActive ? value.title : '${value.value}%',
            titleStyle: AppStayles.styleSemiBold16(context).copyWith(
              color: isActive ? null : Colors.white,
            ),
            titlePositionPercentageOffset: isActive ? 1.5 : null,
            value: value.value,
            color: value.color,
            radius: isActive ? 45 : 40,
          );
        },
      ).toList(),

      // sections: [
      //   PieChartSectionData(
      //     value: 40,
      //     radius: activeIndex == 0 ? 35 : 30,
      //     color: const Color(0xff208CC8),
      //     showTitle: false,
      //   ),
      //   PieChartSectionData(
      //     value: 25,
      //     radius: activeIndex == 1 ? 35 : 30,
      //     color: const Color(0xff4EB7F2),
      //     showTitle: false,
      //   ),
      //   PieChartSectionData(
      //     value: 20,
      //     radius: activeIndex == 2 ? 35 : 30,
      //     color: const Color(0xff064061),
      //     showTitle: false,
      //   ),
      //   PieChartSectionData(
      //     value: 22,
      //     radius: activeIndex == 3 ? 35 : 30,
      //     color: const Color(0xffE2DECD),
      //     showTitle: false,
      //   ),
      // ],
    );
  }
}
