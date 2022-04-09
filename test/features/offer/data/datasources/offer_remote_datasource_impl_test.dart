import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mady/core/errors/exception.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_provider.dart';
import 'package:mady/features/offers/data/datasources/offer_remote_datasource.dart';
import 'package:mady/features/offers/data/models/category_offers_list.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'offer_remote_datasource_impl_test.mocks.dart';

@GenerateMocks([ApiProvider])
void main() {
  late OfferRemoteDataSourceImpl sut;
  late MockApiProvider provider;

  setUp(() {
    provider = MockApiProvider();
    sut = OfferRemoteDataSourceImpl(provider);
  });

  group('GetOffers Test', () {
    final tParams = {
      'action': 'get_all_offers',
      'lat': 32,
      'lng': 51,
    };

    final tJson = fixture('offer/get_all_offers.json');
    final tOffersList = CategoryOffersList.fromJson(jsonDecode(tJson));
    test(
      "Should perform a Post request to server with proper params.",
      () async {
        //arrange
        when(provider.post(any, params: anyNamed('params')))
            .thenAnswer((_) async => Response(tJson, 200));
        //act
        await sut.getOffers(tParams);
        //assert
        verify(provider.post(currentDataUrl, params: tParams));
        verifyNoMoreInteractions(provider);
      },
    );

    test(
      "Should return [CategoryOffersList] if call is success 200",
      () async {
        //arrange
        when(provider.post(any, params: anyNamed('params')))
            .thenAnswer((_) async => Response(tJson, 200));
        //act
        final result = await sut.getOffers(tParams);
        //assert
        expect(result, tOffersList);
      },
    );

    test(
      "Should throw ServerException if call isn't success 200",
      () async {
        //arrange
        when(provider.post(any, params: anyNamed('params')))
            .thenThrow(ServerException(message: noInternt));
        //act
        final result = sut.getOffers;
        //assert
        expect(result(tParams), throwsA(const TypeMatcher<ServerException>()));
      },
    );
  });
}
