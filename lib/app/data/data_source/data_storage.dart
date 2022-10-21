import 'package:shared_preferences/shared_preferences.dart';

class DataStorage {
  SharedPreferences? _preferences;
  static const TOKEN_KEY = 'b4654e62-3449-11ed-a261-0242ac120002';

  Future<void> _initSharePreferencesIfNeed() async {
    if (_preferences != null) return;

    _preferences = await SharedPreferences.getInstance();
  }

  Future<String?> getString(String key) async {
    await _initSharePreferencesIfNeed();

    final result = _preferences!.getString(key);

    return result;
  }

  Future<void> setString(String key, String value) async {
    await _initSharePreferencesIfNeed();

    await _preferences!.setString(key, value);
  }
}
