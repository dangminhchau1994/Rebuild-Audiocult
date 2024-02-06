import 'package:app/di/inject_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePreferencesUtil {
  late SharedPreferences prefs;

  SharePreferencesUtil() {
    initShare();
  }

  Future<SharedPreferences> initShare() async {
    prefs = await getIt.getAsync<SharedPreferences>();
    return prefs;
  }

  void saveString(String key, String value) async {
    prefs.setString(key, value);
  }

  void removeString(String key) async {
    prefs.remove(key);
  }

  String getString(String key) {
    return prefs.getString(key) ?? '';
  }
}
