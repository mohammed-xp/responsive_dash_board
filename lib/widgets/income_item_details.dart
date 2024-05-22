import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';

import '../utils/app_styles.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.itemDetailsModel});

  final ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minVerticalPadding: 0,
      dense: true,
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      title: Text(
        itemDetailsModel.title,
        style: AppStayles.styleRegular16(context),
      ),
      leading: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
          color: itemDetailsModel.color,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      trailing: Text(
        '${itemDetailsModel.value}%',
        style: AppStayles.styleMedium16(context).copyWith(
          color: const Color(0xff208CC8),
        ),
      ),
    );
  }
}
