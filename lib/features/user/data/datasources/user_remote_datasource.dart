import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:mady/core/network/api_provider.dart';

abstract class UserRemoteDatasource {
  Future<bool> updateLocation(Map<String, dynamic> params);
}

@Injectable(as: UserRemoteDatasource)
class UserRemoteDatasourceImpl implements UserRemoteDatasource {
  final ApiProvider _provider;

  UserRemoteDatasourceImpl(this._provider);

  @override
  Future<bool> updateLocation(Map<String, dynamic> params) async {
    final result = await _provider.post(currentDataUrl, params: params);
    return jsonDecode(result.body)['success'] == 1;
  }
}
