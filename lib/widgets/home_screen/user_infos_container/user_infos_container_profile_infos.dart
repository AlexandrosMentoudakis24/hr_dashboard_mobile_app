import 'package:flutter/material.dart';

class UserInfosContainerProfileInfos extends StatelessWidget {
  const UserInfosContainerProfileInfos({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final circularImageSize = constraints.maxHeight * 0.7;

        return SizedBox(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: Row(
            children: [
              SizedBox(
                height: circularImageSize,
                width: circularImageSize,
                child: CircleAvatar(
                  child: Image.asset(
                    fit: BoxFit.contain,
                    "assets/images/profile_image.png",
                  ),
                ),
              ),
              Container(
                width: constraints.maxWidth - (circularImageSize),
                padding: const EdgeInsets.only(left: 7),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "Alexandros Mentoudakis",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "Full Stack Developer",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor,
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
