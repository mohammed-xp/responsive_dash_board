import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStayles.styleSemiBold20(context),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'See all',
            style: AppStayles.styleMedium16(context).copyWith(
              color: const Color(0xff4EB7F2),
            ),
          ),
        ),
      ],
    );
  }
}
