import 'package:flutter/material.dart';

class EmptyMeetingsContainerIcon extends StatelessWidget {
  const EmptyMeetingsContainerIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 30,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Icon(
            Icons.person,
            color: Colors.grey.withAlpha(80),
            size: 40,
          );
        },
      ),
    );
  }
}
