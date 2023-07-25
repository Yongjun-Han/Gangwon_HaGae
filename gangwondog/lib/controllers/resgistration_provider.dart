import 'package:flutter/material.dart';

class RegisterNotifier extends ChangeNotifier {
  bool _obsecureText = true;

  bool get obsecureText => _obsecureText;

  set obsecureText(bool newState) {
    _obsecureText = newState;
    notifyListeners();
  }

  bool passwordValidator(String password) {
    if (password.isEmpty) return false;

    String pattern =
        r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?~^<>,.&+=])[A-Za-z\d$@$!%*#?~^<>,.&+=]{8,15}$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(password);
  }
}
