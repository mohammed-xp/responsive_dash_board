import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_images.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(
      title: 'Dashboard',
      image: Assets.imagesDashboardIcon,
    ),
    const DrawerItemModel(
      title: 'My Transaction',
      image: Assets.imagesMyTransactionIcon,
    ),
    const DrawerItemModel(
      title: 'Statistics',
      image: Assets.imagesStatisticsIcon,
    ),
    const DrawerItemModel(
      title: 'Wallet Account',
      image: Assets.imagesWalletAccountIcon,
    ),
    const DrawerItemModel(
      title: 'My Investments',
      image: Assets.imagesMyInvestmentsIcon,
    ),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
