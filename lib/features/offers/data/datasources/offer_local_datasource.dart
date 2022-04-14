import 'package:injectable/injectable.dart';
import 'package:mady/core/cache/cache_provider.dart';
import 'package:mady/features/login/domain/entities/user.dart';

abstract class OfferLocalDataSource {
  Future<User?> getUser(String key);
}

@Injectable(as: OfferLocalDataSource)
class OfferLocalDatasourceImpl implements OfferLocalDataSource {
  final CacheProvider _provider;

  const OfferLocalDatasourceImpl(this._provider);

  @override
  Future<User?> getUser(String key) async =>
      await _provider.getUser(key);
}
