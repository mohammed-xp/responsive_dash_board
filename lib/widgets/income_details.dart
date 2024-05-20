import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';

import 'income_item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<ItemDetailsModel> items = [
    ItemDetailsModel(
      color: Color(0xff208CC8),
      title: 'Design service',
      value: '40%',
    ),
    ItemDetailsModel(
      color: Color(0xff4EB7F2),
      title: 'Design product',
      value: '25%',
    ),
    ItemDetailsModel(
      color: Color(0xff064061),
      title: 'Product royalti',
      value: '20%',
    ),
    ItemDetailsModel(
      color: Color(0xffE2DECD),
      title: 'Other',
      value: '22%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return IncomeItemDetails(
          itemDetailsModel: items[index],
        );
      },
    );
  }
}
