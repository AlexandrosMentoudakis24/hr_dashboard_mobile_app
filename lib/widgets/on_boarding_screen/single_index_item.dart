import 'package:flutter/material.dart';

class SingleIndexItem extends StatelessWidget {
  const SingleIndexItem({
    required this.isActive,
    super.key,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 35,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: isActive ? Colors.deepPurple : Colors.grey,
        borderRadius: BorderRadius.circular(90),
      ),
    );
  }
}
