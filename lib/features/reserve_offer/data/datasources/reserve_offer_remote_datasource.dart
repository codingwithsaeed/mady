import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:mady/core/network/api_provider.dart';
import 'package:mady/features/reserve_offer/data/models/get_reserves_model/get_reserves_model.dart';
import 'package:mady/features/reserve_offer/domain/entities/offer_details.dart';

abstract class ReserveOfferRemoteDataSource {
  Future<int> reserveOffer(Map<String, dynamic> params);
  Future<OfferDetails> getOfferDetails(Map<String, dynamic> params);
  Future<GetReservesModel> getReserves(Map<String, dynamic> params);
}

@Injectable(as: ReserveOfferRemoteDataSource)
class ReserveOfferRemoteDataSourceImpl implements ReserveOfferRemoteDataSource {
  final ApiProvider _provider;

  const ReserveOfferRemoteDataSourceImpl(this._provider);

  @override
  Future<int> reserveOffer(Map<String, dynamic> params) async {
    final result = await _provider.post(currentDataUrl, params: params);
    return jsonDecode(result.body)['success'];
  }

  @override
  Future<GetReservesModel> getReserves(Map<String, dynamic> params) async {
    final response = await _provider.post(currentDataUrl, params: params);
    var reserves = GetReservesModel.fromJson(jsonDecode(response.body));
    return reserves;
  }

  @override
  Future<OfferDetails> getOfferDetails(Map<String, dynamic> params) async {
    final result = await _provider.post(currentDataUrl, params: params);
    return OfferDetails.fromJson(jsonDecode(result.body));
  }
}
