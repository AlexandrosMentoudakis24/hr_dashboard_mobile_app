class StringFormattingUtils {
  StringFormattingUtils();

  static String formatEnumValue({
    required Enum enumValue,
  }) {
    final wordLength = enumValue.name.length;

    if (wordLength <= 0) throw Error();

    var formattedString = "";

    for (var i = 0; i < wordLength; i++) {
      final currentLetter = enumValue.name[i];

      final isUpperCaseLetter = currentLetter == currentLetter.toUpperCase();

      formattedString += isUpperCaseLetter ? " $currentLetter" : currentLetter;
    }

    formattedString = formattedString.replaceFirst(
      formattedString[0],
      formattedString[0].toUpperCase(),
    );

    return formattedString;
  }
}
