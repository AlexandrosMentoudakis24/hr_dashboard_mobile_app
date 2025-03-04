import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/models/empty_content/empty_content_item.dart';

const _parentContainerPadding =
    EdgeInsets.symmetric(horizontal: 15, vertical: 5);

class EmptyScreenContentContainer extends StatelessWidget {
  const EmptyScreenContentContainer({
    required this.emptyContentItem,
    super.key,
  });

  final EmptyContentItem emptyContentItem;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          padding: _parentContainerPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      emptyContentItem.containerTitle,
                      textAlign: TextAlign.left,
                      textScaler: const TextScaler.linear(1.1),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 3,
                      ),
                      child: Text(
                        emptyContentItem.containerSubTitle,
                        textAlign: TextAlign.left,
                        textScaler: const TextScaler.linear(1.1),
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: emptyContentItem.emptyIconWidget,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Text(
                      emptyContentItem.messageTitle,
                      textAlign: TextAlign.center,
                      textScaler: const TextScaler.linear(1.1),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 3,
                      ),
                      child: Text(
                        emptyContentItem.message,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
