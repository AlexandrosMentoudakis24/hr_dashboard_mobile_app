import 'package:flutter/material.dart';

class SingleLeaveWorkInfosItem extends StatelessWidget {
  const SingleLeaveWorkInfosItem({
    required this.text,
    required this.bgColor,
    required this.totalSum,
    super.key,
  });

  final String text;
  final Color bgColor;
  final int totalSum;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 5,
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: bgColor,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                text,
                textAlign: TextAlign.left,
                textScaler: const TextScaler.linear(1.1),
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Text(
            "$totalSum",
            textAlign: TextAlign.left,
            textScaler: const TextScaler.linear(1.1),
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
