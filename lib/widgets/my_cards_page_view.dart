import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      children: List.generate(
        3,
        (index) => const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: MyCard(),
        ),
      ),
    );
  }
}
