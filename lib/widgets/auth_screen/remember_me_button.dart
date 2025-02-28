import 'package:flutter/material.dart';

class RememberMeButton extends StatefulWidget {
  const RememberMeButton({super.key});

  @override
  State<RememberMeButton> createState() => _RememberMeButtonState();
}

class _RememberMeButtonState extends State<RememberMeButton> {
  var _isButtonChecked = false;

  @override
  Widget build(BuildContext context) {
    var displayedButton = Icons.check_box_outline_blank_outlined;

    if (_isButtonChecked) {
      displayedButton = Icons.check_box_outlined;
    }

    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isButtonChecked = !_isButtonChecked;
              });
            },
            child: Icon(
              displayedButton,
              color: Theme.of(context).primaryColor,
              size: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              "Remember me",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).secondaryHeaderColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
