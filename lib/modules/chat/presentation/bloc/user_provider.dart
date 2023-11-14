import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/services/user_service.dart';

class UserProvider extends ChangeNotifier {
  String? accessToken;

  Future<void> signIn(String email, String password) async {
    try {
      final token = await login(email, password);

      final prefs = await SharedPreferences.getInstance();
      prefs.setString('accessToken', token);

      accessToken = token;
      notifyListeners();
    } catch (e) {
      throw Exception(e);
    }
  }
}
