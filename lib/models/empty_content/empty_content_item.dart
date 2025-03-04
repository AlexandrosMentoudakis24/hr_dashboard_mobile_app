import 'package:flutter/material.dart';

class EmptyContentItem {
  const EmptyContentItem({
    required this.containerTitle,
    required this.containerSubTitle,
    required this.emptyIconWidget,
    required this.messageTitle,
    required this.message,
  });

  final String containerTitle;
  final String containerSubTitle;
  final Widget emptyIconWidget;
  final String messageTitle;
  final String message;
}
