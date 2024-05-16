import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<AllExpensesItemModel> items = [
    const AllExpensesItemModel(
      image: Assets.imagesBalanceIcon,
      title: 'Balance',
      date: 'April 2022',
      price: '\$20.129',
    ),
    const AllExpensesItemModel(
      image: Assets.imagesIncomeIcon,
      title: 'Income',
      date: 'April 2022',
      price: '\$20.129',
    ),
    const AllExpensesItemModel(
      image: Assets.imagesExpensesIcon,
      title: 'Expenses',
      date: 'April 2022',
      price: '\$20.129',
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // return Row(
    //   children: items
    //       .map(
    //         (e) => Expanded(
    //           child: AllExpensesItem(itemModel: e),
    //         ),
    //       )
    //       .toList(),
    // );

    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        return Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpensesItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
