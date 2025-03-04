import 'package:flutter/material.dart';

class BottomNavBarItem {
  BottomNavBarItem({
    required this.id,
    required this.inActiveIcon,
    required this.activeIcon,
  });

  final int id;
  final IconData inActiveIcon;
  final IconData activeIcon;
}
