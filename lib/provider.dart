import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PasswordStateProvider extends ChangeNotifier {
  String password = 'Click on genrate Password Button';
  bool isUppercase = true;
  bool isLowercase = true;
  bool isNumber = true;
  bool isSynmbol = true;
  bool isExcludeuplicates = true;
  bool isIncludedSpace = true;
  int passwordLenght = 8;
  int maxPasswordLength = 32;
  int miniPasswordLength = 6;

  // f
  void changeUppercase() {
    this.isUppercase = !this.isUppercase;
    notifyListeners();
  }

  void changeLowercase() {
    this.isLowercase = !this.isLowercase;
    notifyListeners();
  }

  void changeNumber() {
    this.isNumber = !this.isNumber;

    notifyListeners();
  }

  void changeSymbol() {
    this.isSynmbol = !this.isSynmbol;
    notifyListeners();
  }

  void changeIncludeSpace() {
    this.isIncludedSpace = !this.isIncludedSpace;
    notifyListeners();
  }

  void changeExcludeDulpicate() {
    this.isExcludeuplicates = !this.isExcludeuplicates;
    notifyListeners();
  }

  void changePasswordLength(val) {
    this.passwordLenght = (val * 1).round();
    notifyListeners();
  }

  void changePassword() {
    String uppercase = isUppercase ? 'ABCDEFGHIJKLMOPQRSTUVWXYZ' : '';
    String lowercase = isLowercase ? 'abcdefghijklmnopqrstuvwxyz' : '';
    String number = isNumber ? '1234567890' : '';
    String symbol = isSynmbol ? "~`!@#%^&*()_-+={}[]|;:'<>?/" : '';
    String space = isIncludedSpace ? ' ' : '';

    String fakepassword = uppercase + lowercase + number + symbol + space;
    String genpassword = '';

    var ran = Random();

    for (var i = 0; i < passwordLenght; i++) {
      genpassword += fakepassword[ran.nextInt(fakepassword.length)];
    }

    // Update the password field
    password = genpassword;

    // Notify listeners about the change
    notifyListeners();
  }
}
