import 'package:flutter/material.dart';

import 'package:hr_dashboard_mobile_app/utils/delay_time_utils/delay_time_utils.dart';

class SingleMeetingJoinButton extends StatefulWidget {
  const SingleMeetingJoinButton({
    required this.meetingId,
    super.key,
  });

  final int meetingId;

  @override
  State<SingleMeetingJoinButton> createState() =>
      _SingleMeetingJoinButtonState();
}

class _SingleMeetingJoinButtonState extends State<SingleMeetingJoinButton> {
  var _isLoading = false;

  Future<void> _onJoinButtonPressedHandler(int meetingId) async {
    setState(() {
      _isLoading = true;
    });

    await DelayTimeUtils.delayTimeForNSeconds(
      seconds: 2,
    );

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Widget loadingStateWidget = Container(
      height: 25,
      width: 25,
      margin: const EdgeInsets.only(
        right: 25,
      ),
      child: CircularProgressIndicator(
        color: Theme.of(context).primaryColor,
      ),
    );

    final Widget defaultScreenContent = GestureDetector(
      onTap: () {
        if (_isLoading) return;

        _onJoinButtonPressedHandler(
          widget.meetingId,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: const FittedBox(
          child: Text(
            "Join Meeting",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );

    return _isLoading ? loadingStateWidget : defaultScreenContent;
  }
}
