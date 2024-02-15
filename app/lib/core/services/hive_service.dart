import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  Future<void> init() async {
    await Hive.initFlutter();
  }

  Future<void> openBox(String boxName) async {
    await Hive.openBox(boxName);
  }

  Future<void> putData(String boxName, String key, dynamic value) async {
    final box = await Hive.openBox(boxName);
    await box.put(key, value);
  }

  Future<dynamic> getData(String boxName, String key) async {
    final box = await Hive.openBox(boxName);
    return box.get(key);
  }

  Future<void> deleteData(String boxName, String key) async {
    final box = await Hive.openBox(boxName);
    await box.delete(key);
  }

  Future<void> clearBox(String boxName) async {
    final box = await Hive.openBox(boxName);
    await box.clear();
  }
}
