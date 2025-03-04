import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceLocalStorage {
  static SharedPreferenceLocalStorage? _instance;
  static SharedPreferences? _preferences;
  static Future<SharedPreferenceLocalStorage> getInstance() async {
    if (_instance == null) {
      _instance = SharedPreferenceLocalStorage();
    }
    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }
    return _instance!;
  }

  Future setBool(String key, bool value) async {
    await _preferences?.setBool(key, value);
  }

  Future setString(String key, String value) async {
    await _preferences?.setString(key, value);
  }

  Future setDouble(String key, num value)async {
    return _preferences!.setDouble(key, value.toDouble());
  }

  Future setStringList(String key, List<String> value) async{
    await _preferences!.setStringList(key, value);
  }

  bool? getBool(String key) {
    return _preferences?.getBool(key);
  }

  String? getString(String key) {
    return _preferences?.getString(key);
  }

  double? getDouble(String key) {
    return _preferences?.getDouble(key);
  }

  List<String>? getStringList(String key) {
    return _preferences?.getStringList(key);
  }

  Future<bool?> clearData(String key) async {
    return await _preferences?.remove(key);
  }

  Future<bool?> clearStorage() async {
    return await _preferences?.clear();
  }
}
