import 'package:injectable/injectable.dart';
import 'package:mady/core/cache/cache_provider.dart';

abstract class LoginLocalDatasource {
  Future<bool> saveUser(String key, Map<String, dynamic> value);
}

@Injectable(as: LoginLocalDatasource)
class LoginLocalDatasourceImpl implements LoginLocalDatasource {
  final CacheProvider _provider;

  const LoginLocalDatasourceImpl(this._provider);

  @override
  Future<bool> saveUser(String key, Map<String, dynamic> value) async =>
      await _provider.saveUser(key, value);
}
