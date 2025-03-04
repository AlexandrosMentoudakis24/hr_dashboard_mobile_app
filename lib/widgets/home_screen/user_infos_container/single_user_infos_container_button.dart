import 'package:flutter/material.dart';

class SingleUserInfosContainerButton extends StatelessWidget {
  const SingleUserInfosContainerButton({
    required this.onIconPressedHandler,
    required this.icon,
    super.key,
  });

  final void Function() onIconPressedHandler;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: Theme.of(context).primaryColor.withValues(alpha: 0.3),
      onPressed: onIconPressedHandler,
      icon: Icon(
        icon,
        size: 25,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
