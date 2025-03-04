import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/_global/overflowed_container_with_card/overflowed_container_title_widget.dart';

const double _titleTopPadding = 30;
const double _innerCardTopPadding = 100;
const double _innerCardTopMargin = 10;

class OverflowedContainerWithCard extends StatelessWidget {
  const OverflowedContainerWithCard({
    required this.upperContainerHeight,
    required this.filledContainerHeight,
    required this.maxWidth,
    required this.titleText,
    required this.subTitleText,
    required this.titleImage,
    required this.cardWidget,
    super.key,
  });

  final double upperContainerHeight;
  final double filledContainerHeight;
  final double maxWidth;
  final String titleText;
  final String subTitleText;
  final Widget titleImage;
  final Widget cardWidget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: upperContainerHeight,
      width: maxWidth,
      child: Column(
        children: [
          SizedBox(
            height: upperContainerHeight,
            width: maxWidth,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  height: filledContainerHeight,
                  width: maxWidth,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                  ),
                ),
                Positioned(
                  top: _titleTopPadding,
                  left: 0,
                  child: Container(
                    height: upperContainerHeight - _titleTopPadding,
                    width: maxWidth,
                    padding: const EdgeInsets.only(left: 15),
                    child: OverflowedContainerTitleWidget(
                      titleText: titleText,
                      subTitleText: subTitleText,
                      image: titleImage,
                    ),
                  ),
                ),
                Positioned(
                  top: _innerCardTopPadding,
                  left: 0,
                  child: Container(
                    height: upperContainerHeight -
                        _innerCardTopPadding -
                        _innerCardTopMargin,
                    width: maxWidth,
                    margin: const EdgeInsets.only(
                      top: _innerCardTopMargin,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: cardWidget,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
