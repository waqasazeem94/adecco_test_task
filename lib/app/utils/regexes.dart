class Regexes {
  /// A [RegExp] that only allows numbers and one dot, with the first number not
  /// being a zero or dot.

  /// A [RegExp] that only allows valid full-emails.
  static final email = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );

  static final fullName = RegExp(r"^[a-z ,.\'-]+$", caseSensitive: false);
}
