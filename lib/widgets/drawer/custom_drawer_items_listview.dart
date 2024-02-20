import '../../models/drawer_item_model.dart';
import 'custom_drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerItemsListView extends StatelessWidget {
  const CustomDrawerItemsListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return CustomDrawerItem(
          drawerItemModel: items[index],
        );
      },
    );
  }
}
