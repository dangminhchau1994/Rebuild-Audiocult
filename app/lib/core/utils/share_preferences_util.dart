import 'package:shared_preferences/shared_preferences.dart';

class SharePreferencesUtil {
  SharedPreferences? prefs;

  SharePreferencesUtil(this.prefs);

  void saveString(String key, String value) async {
    await prefs?.setString(key, value);
  }

  void removeString(String key) async {
    await prefs?.remove(key);
  }

  String getString(String key) {
    return prefs?.getString(key) ?? '';
  }
}
