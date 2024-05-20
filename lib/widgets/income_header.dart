import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'range_options.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Income',
          style: AppStayles.styleSemiBold20,
        ),
        Expanded(
          child: SizedBox(),
        ),
        RangeOptions(),
      ],
    );
  }
}
