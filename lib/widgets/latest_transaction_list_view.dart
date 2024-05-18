import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserInfoModel> items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Ibrahim Ali',
      subtitle: 'ibrahimturki66@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Abdalla Mohammed',
      subtitle: 'abdalla123033@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: 'Lena Yosif',
      subtitle: 'lenayosifali8347@gmail',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) {
          return IntrinsicWidth(
            child: UserInfoListTile(
              userInfoModel: e,
            ),
          );
        }).toList(),
      ),
    );
    // ignore: dead_code
    return SizedBox(
      // The height value is determined according to the child's height,
      // with an additional, unnoticeable space for warranty.
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(
              userInfoModel: items[index],
            ),
          );
        },
      ),
    );
  }
}
