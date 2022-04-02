import 'dart:async';

import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/exception.dart';

abstract class ApiProvider {
  Future<Response> post(Uri url, {required Map<String, dynamic> params});
}

@lazySingleton
class ApiProviderImpl implements ApiProvider {
  final Client _client;

  ApiProviderImpl(this._client);

  @override
  Future<Response> post(Uri url, {required Map<String, dynamic> params}) async {
    try {
      final _response = await _client
          .post(url, body: params)
          .timeout(const Duration(seconds: 5));
      if (_response.statusCode == 200) return _response;
      throw ServerException(message: 'خطا در دریافت اطلاعات از سرور');
    } on TimeoutException {
      throw ServerException(message: 'دستگاه نمیتواند به سرور متصل شود');
    } on Exception {
      throw ServerException(message: 'خطا در دریافت اطلاعات از سرور');
    }
  }
}
