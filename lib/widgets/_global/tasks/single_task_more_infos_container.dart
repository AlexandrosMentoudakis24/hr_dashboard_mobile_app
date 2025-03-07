import 'package:flutter/material.dart';

Widget _defaultRowFormat({
  required Icon icon,
  required String text,
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    spacing: 7,
    children: [
      icon,
      Text(
        text,
        textScaler: const TextScaler.linear(1.1),
        style: const TextStyle(
          fontSize: 17,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}

class SingleTaskMoreInfosContainer extends StatelessWidget {
  const SingleTaskMoreInfosContainer({
    required this.dueDate,
    super.key,
  });

  final DateTime dueDate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      spacing: 20,
      children: [
        _defaultRowFormat(
          icon: const Icon(
            Icons.calendar_today_outlined,
            size: 25,
            color: Colors.grey,
          ),
          text: "27 April",
        ),
        _defaultRowFormat(
          icon: const Icon(
            Icons.message_outlined,
            size: 25,
            color: Colors.grey,
          ),
          text: "2",
        ),
      ],
    );
  }
}
