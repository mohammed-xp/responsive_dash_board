import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.length,
    required this.currentPageIndex,
  });

  final int length;

  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        length,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CustomDot(isActive: index == currentPageIndex),
        ),
      ),
    );
  }
}
