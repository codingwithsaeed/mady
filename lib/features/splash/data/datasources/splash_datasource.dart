import 'package:injectable/injectable.dart';
import 'package:mady/core/cache/cache_provider.dart';

abstract class SplashDataSource {
  /// Uses a shared prefrences to determine if user is logged in
  /// Throws a [SharedException] on all errors
  bool checkIsUserLoggedIn(String key);
}

@Injectable(as: SplashDataSource)
class SplashDataSourceImpl implements SplashDataSource {
  final CacheProvider _provider;

  SplashDataSourceImpl(this._provider);

  @override
  bool checkIsUserLoggedIn(String key) => _provider.isLoggedIn(key);
}
