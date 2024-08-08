import 'package:flutter/material.dart';
import 'package:flutter_application_4/api/api.dart';
import 'package:flutter_application_4/models/user.dart';

class UserProvider extends ChangeNotifier {
  List<User> users = [];
  bool isLoding =
      true; // Note: There's a typo here, "isLoding" should be "isLoading"
  String? errorMessage;

  Api _api = Api(); // Missing semicolon here

  Future<void> fetchusers() async {
    errorMessage = null;
    notifyListeners();

    try {
      users = await _api.getusers();
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoding = false;
      notifyListeners();
    }
  }
}
