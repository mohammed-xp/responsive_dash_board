import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';

import 'income_item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key, required this.items});

  final List<ItemDetailsModel> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => IncomeItemDetails(itemDetailsModel: e),
          )
          .toList(),
    );

    // Error with CustomScrollView because shrinkWrap=true
    // ignore: dead_code
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
