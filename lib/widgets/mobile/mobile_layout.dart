import '../list/custom_list_view.dart';
import '../custom_sliver_grid.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        CustomSliverGrid(),
        CustomSliverListView(),
      ],
    );
  }
}
