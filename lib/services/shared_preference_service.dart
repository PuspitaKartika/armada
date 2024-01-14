import 'dart:convert';

import 'package:armada/constans/constans.dart';
import 'package:armada/model/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService {
  static Future<void> saveUser(LoginModel user) async {
    final pref = await SharedPreferences.getInstance();

    pref.setString(userKey, json.encode(user));
  }

  static Future<LoginModel?> getUser() async {
    final pref = await SharedPreferences.getInstance();

    final res = pref.getString(userKey);
    LoginModel? user;
    if (res != null) {
      user = LoginModel.fromJson(json.decode(res));
    }

    return user;
  }

  static Future<bool> hasToken() async {
    final user = await getUser();

    return user?.jwt != null;
  }

  static Future<String?> getToken() async {
    final user = await getUser();

    return user?.jwt;
  }

  static Future<void> deleteUser() async {
    final pref = await SharedPreferences.getInstance();

    await pref.remove(userKey);
  }
}
