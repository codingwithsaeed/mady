import 'package:injectable/injectable.dart';
import 'package:mady/core/cache/cache_provider.dart';
import 'package:mady/features/login/domain/entities/user.dart';

abstract class ReserveOfferLocalDataSource {
  Future<User?> getUser(String key);
}

@Injectable(as: ReserveOfferLocalDataSource)
class ReserveOfferLocalDatasourceImpl implements ReserveOfferLocalDataSource {
  final CacheProvider _provider;

  const ReserveOfferLocalDatasourceImpl(this._provider);

  @override
  Future<User?> getUser(String key) async =>
      await _provider.getUser(key);
}