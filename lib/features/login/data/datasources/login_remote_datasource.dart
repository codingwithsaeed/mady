import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/exception.dart';
import 'package:mady/core/network/api_provider.dart';
import 'package:mady/features/login/data/models/login_model.dart';
import 'package:mady/features/login/domain/entities/user.dart';

abstract class LoginRemoteDatasource {
  Future<User> authenticate(Map<String, dynamic> params);
}

@Injectable(as: LoginRemoteDatasource)
class LoginRemoteDatasourceImpl implements LoginRemoteDatasource {
  final ApiProvider _apiProvider;

  LoginRemoteDatasourceImpl(this._apiProvider);

  @override
  Future<User> authenticate(Map<String, dynamic> params) async {
    final resp = await _apiProvider.post(currentDataUrl, params: params);
    final model = LoginModel.fromJson(jsonDecode(resp.body));
    if (model.success == 1) return model.user!;
    throw ServerException(message: 'شماره موبایل و یا گذرواژه نادرست است');
  }
}
