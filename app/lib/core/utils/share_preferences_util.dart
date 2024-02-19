import 'package:shared_preferences/shared_preferences.dart';

class SharePreferencesUtil {
  SharedPreferences? prefs;

  SharePreferencesUtil(this.prefs);

  void saveString(String key, String value) async {
    await prefs?.setString(key, value);
  }

  void saveInt(String key, int value) async {
    await prefs?.setInt(key, value);
  }

  void removeString(String key) async {
    await prefs?.remove(key);
  }

  String getString(String key) {
    return prefs?.getString(key) ?? '';
  }

  int getInt(String key) {
    return prefs?.getInt(key) ?? -1;
  }
}
