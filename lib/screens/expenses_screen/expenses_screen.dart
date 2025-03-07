import 'dart:math';

import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/widgets/_global/overflowed_container_with_card/overflowed_container_with_card.dart';
import 'package:hr_dashboard_mobile_app/widgets/expenses_screen/expenses_h_bar.dart';
import 'package:hr_dashboard_mobile_app/widgets/expenses_screen/submitted_expenses_container.dart';
import 'package:hr_dashboard_mobile_app/widgets/expenses_screen/expenses_card.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/primary_button.dart';

class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        final maxWidth = constraints.maxWidth;

        final double upperContainerHeight = min(260.0, maxHeight * 0.4);
        final double filledContainerHeight = upperContainerHeight * 0.7;
        final double followingContainerHeight =
            maxHeight - upperContainerHeight;

        return SizedBox(
          height: maxHeight,
          width: maxWidth,
          child: Column(
            children: [
              OverflowedContainerWithCard(
                upperContainerHeight: upperContainerHeight,
                filledContainerHeight: filledContainerHeight,
                maxWidth: maxWidth,
                titleText: "Expenses",
                subTitleText: "Claim Your Expenses Here",
                titleImage: Container(
                  alignment: Alignment.topCenter,
                  height: 80,
                  width: 80,
                  margin: const EdgeInsets.only(
                    right: 15,
                  ),
                  child: Image.asset(
                    "assets/images/credit_card_with_stars_image.png",
                  ),
                ),
                cardWidget: const ExpensesCard(),
              ),
              SizedBox(
                height: followingContainerHeight,
                width: maxWidth,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 20,
                    children: [
                      Container(
                        height: 60,
                        margin: const EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                        ),
                        child: const PrimaryButton(
                          btnText: "Submit Expense",
                        ),
                      ),
                      SizedBox(
                        height: 45,
                        width: maxWidth,
                        child: const ExpensesHBar(),
                      ),
                      Container(
                        height: 350,
                        width: maxWidth,
                        padding: const EdgeInsets.only(
                          top: 20,
                          bottom: 10,
                        ),
                        child: const SubmittedExpensesContainer(
                          hasItems: false,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
