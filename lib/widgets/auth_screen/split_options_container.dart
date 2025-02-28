import 'package:flutter/material.dart';

const _childContainerHeight = 3.0;
Color _innerContainersColor = Colors.blueGrey.withValues(
  alpha: 0.4,
);

class SplitOptionsContainer extends StatelessWidget {
  const SplitOptionsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final Widget singleVerticalLineWidget = Container(
          height: _childContainerHeight,
          width: constraints.maxWidth * 0.4,
          decoration: BoxDecoration(
            color: _innerContainersColor,
            borderRadius: BorderRadius.circular(90),
          ),
        );

        return SizedBox(
          height: 30,
          width: constraints.maxWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              singleVerticalLineWidget,
              const Flexible(
                flex: 1,
                child: Text(
                  "OR",
                  textAlign: TextAlign.center,
                  textScaler: TextScaler.linear(1.1),
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              singleVerticalLineWidget,
            ],
          ),
        );
      },
    );
  }
}
