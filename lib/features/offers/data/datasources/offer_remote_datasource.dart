import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/exception.dart';
import 'package:mady/core/network/api_provider.dart';
import 'package:mady/features/offers/data/models/category_offers_list.dart';

abstract class OfferRemoteDataSource {
  Future<CategoryOffersList> getOffers(Map<String, dynamic> params);
  Future<int> reserveOffer(Map<String, dynamic> params);
}

@Injectable(as: OfferRemoteDataSource)
class OfferRemoteDataSourceImpl implements OfferRemoteDataSource {
  final ApiProvider _provider;

  OfferRemoteDataSourceImpl(this._provider);

  @override
  Future<CategoryOffersList> getOffers(Map<String, dynamic> params) async {
    try {
      final result = await _provider.post(currentDataUrl, params: params);
      return CategoryOffersList.fromJson(jsonDecode(result.body));
    } on UnsupportedError catch (e) {
      throw ServerException(
          message: e.message ?? "دریافت اطلاعات با خطا مواجه شد");
    }
  }

  @override
  Future<int> reserveOffer(Map<String, dynamic> params) async {
    final result = await _provider.post(currentDataUrl, params: params);
    return jsonDecode(result.body)['success'];
  }
}
