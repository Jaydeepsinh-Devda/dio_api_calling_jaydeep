class Validator {
  //Email Validator
  static bool isValidEmail(String email) =>
      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+")
          .hasMatch(email);

  static bool isValidPassword(String password) => password.length > 3;
}
