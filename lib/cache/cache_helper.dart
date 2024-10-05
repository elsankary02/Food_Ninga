import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  static Future<void> cacheIntialzation() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static setTheme({required String key, required bool value}) async {
    sharedPreferences.setBool(key, value);
  }

  static getTheme({required String key}) {
    sharedPreferences.getBool(key);
  }
}
