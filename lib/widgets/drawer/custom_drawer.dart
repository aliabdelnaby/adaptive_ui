import '../../models/drawer_item_model.dart';
import 'custom_drawer_items_listview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  final List<DrawerItemModel> items = const [
    DrawerItemModel(
      title: "D A S H B O A R D",
      icon: Icons.home,
    ),
    DrawerItemModel(
      title: "S E T T I N G S",
      icon: Icons.settings,
    ),
    DrawerItemModel(
      title: "A B O U T",
      icon: Icons.info,
    ),
    DrawerItemModel(
      title: "L O G O U T",
      icon: Icons.logout,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: const Color(0xffDBDBDB),
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              FontAwesomeIcons.solidHeart,
              size: 56,
            ),
          ),
          const SizedBox(height: 16),
          CustomDrawerItemsListView(items: items),
        ],
      ),
    );
  }
}
