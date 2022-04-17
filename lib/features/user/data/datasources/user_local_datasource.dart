import 'package:injectable/injectable.dart';
import 'package:mady/core/cache/cache_provider.dart';
import 'package:mady/features/user/domain/entities/user.dart';

abstract class UserLocalDatasource {
  Future<User?> getUser(String key);
  Future<bool> saveUser(String key, User user);
}

@Injectable(as: UserLocalDatasource)
class UserLocalDatasourceImpl implements UserLocalDatasource {
  final CacheProvider _provider;

  const UserLocalDatasourceImpl(this._provider);

  @override
  Future<User?> getUser(String key) async => await _provider.getUser(key);

  @override
  Future<bool> saveUser(String key, User user) async =>
      await _provider.saveUser(key, user.toJson());
}
