import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:mady/features/user/domain/entities/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class CacheProvider {
  Future<bool> saveUser(String key, Map<String, dynamic> value);
  Future<User?> getUser(String key);
  Future<bool> deleteUser(String key);
  bool isLoggedIn(String key);
}

@Injectable(as: CacheProvider)
class CacheProviderImpl implements CacheProvider {
  final SharedPreferences _prefs;

  CacheProviderImpl(this._prefs);

  @override
  Future<bool> deleteUser(String key) async => await _prefs.remove(key);

  @override
  Future<bool> saveUser(String key, Map<String, dynamic> value) async {
    if (_prefs.containsKey(key)) _prefs.remove(key);
    return await _prefs.setString(key, jsonEncode(value));
  }

  @override
  bool isLoggedIn(String key) => _prefs.containsKey(key);

  @override
  Future<User?> getUser(String key) async {
    final result = _prefs.getString(key);
    if (result == null) return null;
    final user = User.fromJson(jsonDecode(result));
    return user;
  }
}
