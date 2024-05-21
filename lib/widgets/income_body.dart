import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/detailed_income_chart.dart';

import '../models/item_details_model.dart';
import 'income_chart.dart';
import 'income_details.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({
    super.key,
  });

  static const List<ItemDetailsModel> incomeDetailsItems = [
    ItemDetailsModel(
      color: Color(0xff208CC8),
      title: 'Design service',
      value: 40,
    ),
    ItemDetailsModel(
      color: Color(0xff4EB7F2),
      title: 'Design product',
      value: 25,
    ),
    ItemDetailsModel(
      color: Color(0xff064061),
      title: 'Product royalti',
      value: 20,
    ),
    ItemDetailsModel(
      color: Color(0xffE2DECD),
      title: 'Other',
      value: 22,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.sizeOf(context).width;

    log(widthScreen.toString());

    return widthScreen >= SizeConfig.desktop && widthScreen <= 1670
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: DetailedIncomeChart(
                items: incomeDetailsItems,
              ),
            ),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              SizedBox(
                width: 40,
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(
                  items: incomeDetailsItems,
                ),
              ),
            ],
          );
  }
}
