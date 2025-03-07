class DelayTimeUtils {
  DelayTimeUtils();

  static Future<void> delayTimeForNSeconds({
    required int seconds,
  }) async {
    await Future.delayed(
      Duration(
        seconds: seconds,
      ),
    );
  }
}
