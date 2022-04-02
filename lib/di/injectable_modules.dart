import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class InjectableModules {
  Client get client => Client();

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
