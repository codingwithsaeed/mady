import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/exception.dart';
import 'package:mady/core/network/api_provider.dart';
import 'package:mady/features/near_offers/data/models/near_offers_model.dart';

abstract class NearOffersRemoteDataSource {
  Future<NearOffersModel> getOffers(Map<String, dynamic> params);
}

@Injectable(as: NearOffersRemoteDataSource)
class NearOffersRemoteDataSourceImpl implements NearOffersRemoteDataSource {
  final ApiProvider _provider;

  NearOffersRemoteDataSourceImpl(this._provider);

  @override
  Future<NearOffersModel> getOffers(Map<String, dynamic> params) async {
    try {
      final result = await _provider.post(currentDataUrl, params: params);
      return NearOffersModel.fromJson(jsonDecode(result.body));
    } on UnsupportedError catch (e) {
      throw ServerException(
          message: e.message ?? "دریافت اطلاعات با خطا مواجه شد");
    }
  }
}
