import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mady/core/errors/exception.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/core/network/network_info.dart';
import 'package:mady/features/offers/data/datasources/offer_remote_datasource.dart';
import 'package:mady/features/offers/data/models/category_offers_list.dart';
import 'package:mady/features/offers/data/repositories/offer_repository_impl.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'offer_repository_impl_test.mocks.dart';

@GenerateMocks([OfferRemoteDataSource, NetworkInfo])
void main() {
  late MockOfferRemoteDataSource remoteDataSource;
  late NetworkInfo networkInfo;
  late OfferRepositoryImpl repository;

  setUp(() {
    networkInfo = MockNetworkInfo();
    remoteDataSource = MockOfferRemoteDataSource();
    repository = OfferRepositoryImpl(
      remoteDataSource: remoteDataSource,
      networkInfo: networkInfo,
    );
  });

  group("Testing get all offers", () {
    final tParams = ApiParam(
      value: {
        'action': 'get_all_offers',
        'lat': 32,
        'lng': 51,
      },
    );
    final tJson = fixture('offer/get_all_offers.json');
    final tOffersList = CategoryOffersList.fromJson(jsonDecode(tJson));

    test("should return [GeneralFailure] if device is not connect to internet",
        () async {
      // arrange
      when(networkInfo.isConnected).thenAnswer((_) async => false);
      when(remoteDataSource.getOffers(tParams.value))
          .thenAnswer((realInvocation) async => tOffersList);
      // act
      final result = await repository.getOffers(tParams);
      // assert
      expect(result, Left(GeneralFailure(message: noInternt)));
      verify(networkInfo.isConnected);
      verifyNoMoreInteractions(networkInfo);
    });

    test(
      "Should return OffersList if operation is succeed",
      () async {
        //arrange
        when(networkInfo.isConnected).thenAnswer((_) async => true);
        when(remoteDataSource.getOffers(tParams.value))
            .thenAnswer((realInvocation) async => tOffersList);
        //act
        final result = await repository.getOffers(tParams);
        //assert
        expect(result, Right(tOffersList.offers));
        verify(remoteDataSource.getOffers(tParams.value));
        verifyNoMoreInteractions(remoteDataSource);
      },
    );
    test(
      "Should return GeneralFailure if datasource throws a [ServerException]",
      () async {
        //arrange
        when(networkInfo.isConnected).thenAnswer((_) async => true);
        when(remoteDataSource.getOffers(tParams.value))
            .thenThrow(ServerException(message: noInternt));
        //act
        final result = await repository.getOffers(tParams);
        //assert
        expect(result, Left(GeneralFailure(message: noInternt)));
      },
    );
  });
}
