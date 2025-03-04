import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/models/bottom_nav_bar/bottom_nav_bar_item.dart';

Widget activeItemExtraWidget({
  required double height,
  required double width,
}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(90),
    ),
  );
}

class SingleBottomNavBarItem extends StatelessWidget {
  const SingleBottomNavBarItem({
    required this.navItem,
    required this.isActive,
    super.key,
  });

  final BottomNavBarItem navItem;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        IconData displayedIcon = navItem.inActiveIcon;
        Widget extraWidget = const SizedBox(
          height: 3,
        );

        if (isActive) {
          displayedIcon = navItem.activeIcon;

          extraWidget = activeItemExtraWidget(
            height: 3,
            width: constraints.maxWidth * 0.25,
          );
        }

        return Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          color: Colors.black.withValues(
            alpha: 0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                displayedIcon,
                size: 30,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: extraWidget,
              ),
            ],
          ),
        );
      },
    );
  }
}
