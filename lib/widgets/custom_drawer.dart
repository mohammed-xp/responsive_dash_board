import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_item.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

import 'drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const UserInfoModel userInfoModel = UserInfoModel(
    image: Assets.imagesAvatar3,
    title: 'Lekan Okeowo',
    subtitle: 'demo@gmail.com',
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: userInfoModel,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: 'Setting system',
                      image: Assets.imagesSettingIcon,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: 'Logout account',
                      image: Assets.imagesLogoutIcon,
                    ),
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
