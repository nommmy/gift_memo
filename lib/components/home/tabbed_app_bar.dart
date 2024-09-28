import 'package:flutter/material.dart';

const icons = [Icons.calendar_month, Icons.redeem, Icons.person_outline];

class TabbedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TabbedAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 70,
      pinned: true,
      floating: true,
      bottom: TabBar(
        tabs: icons
            .map((icon) => Tab(icon: Icon(icon, color: Theme.of(context).colorScheme.primary)))
            .toList(),
        indicatorColor: Theme.of(context).colorScheme.secondary,
        indicatorWeight: 4.5,
      ),
      shape: const Border(
        bottom: BorderSide(color: Colors.white),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
