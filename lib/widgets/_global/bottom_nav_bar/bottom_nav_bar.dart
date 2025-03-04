import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/_global/bottom_nav_bar/single_bottom_nav_bar_item.dart';
import 'package:hr_dashboard_mobile_app/models/bottom_nav_bar/bottom_nav_bar_item.dart';

const kBottomNavBarHeight = 90.0;

List<BottomNavBarItem> _navItems = [
  BottomNavBarItem(
    id: 1,
    inActiveIcon: Icons.house_outlined,
    activeIcon: Icons.house_rounded,
  ),
  BottomNavBarItem(
    id: 2,
    inActiveIcon: Icons.calendar_month_outlined,
    activeIcon: Icons.calendar_month,
  ),
  BottomNavBarItem(
    id: 3,
    inActiveIcon: Icons.assignment_outlined,
    activeIcon: Icons.assignment_rounded,
  ),
  BottomNavBarItem(
    id: 4,
    inActiveIcon: Icons.description_outlined,
    activeIcon: Icons.description_rounded,
  ),
  BottomNavBarItem(
    id: 5,
    inActiveIcon: Icons.quiz_outlined,
    activeIcon: Icons.quiz_rounded,
  ),
];

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    required this.onItemTapHandler,
    super.key,
  });

  final void Function(int newIdx) onItemTapHandler;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int _activeItemId;
  @override
  void initState() {
    super.initState();

    if (_navItems.isEmpty) {
      throw Error();
    }

    _activeItemId = _navItems[0].id;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final singleNavItemWidth = screenWidth * 1 / _navItems.length;

    return Container(
      width: screenWidth,
      height: kBottomNavBarHeight,
      color: Colors.black,
      child: Row(
        children: _navItems.map(
          (item) {
            final isActiveItem = _activeItemId == item.id;

            return GestureDetector(
              onTap: () {
                if (isActiveItem) return;

                widget.onItemTapHandler(item.id);

                setState(() {
                  _activeItemId = item.id;
                });
              },
              child: SizedBox(
                height: kBottomNavBarHeight,
                width: singleNavItemWidth,
                child: SingleBottomNavBarItem(
                  navItem: item,
                  isActive: isActiveItem,
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
