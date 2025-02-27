import 'package:flutter/material.dart';

class SecondaryButtonWithIcon extends StatelessWidget {
  const SecondaryButtonWithIcon({
    required this.icon,
    required this.btnText,
    super.key,
  });

  final IconData icon;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.deepPurple,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(90),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 5,
            ),
            child: Text(
              btnText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
