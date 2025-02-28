import 'package:flutter/material.dart';

class ChangeAuthStateContainer extends StatelessWidget {
  const ChangeAuthStateContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Don't have an account?",
            textScaler: const TextScaler.linear(1.1),
            style: TextStyle(
              fontSize: 15,
              color: Theme.of(context).secondaryHeaderColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: GestureDetector(
              onTap: () {},
              child: Text(
                "Sign Up",
                textScaler: const TextScaler.linear(1.1),
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
