import 'package:injectable/injectable.dart';
import 'package:mady/core/cache/cache_provider.dart';
import 'package:mady/features/login/domain/entities/user.dart';

abstract class NearOffersLocalDataSource {
  Future<User?> getUser(String key);
}

@Injectable(as: NearOffersLocalDataSource)
class NearOffersLocalDatasourceImpl implements NearOffersLocalDataSource {
  final CacheProvider _provider;

  const NearOffersLocalDatasourceImpl(this._provider);

  @override
  Future<User?> getUser(String key) async =>
      await _provider.getUser(key);
}
