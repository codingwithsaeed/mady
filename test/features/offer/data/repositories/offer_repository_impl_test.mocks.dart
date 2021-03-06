// Mocks generated by Mockito 5.1.0 from annotations
// in mady/test/features/offer/data/repositories/offer_repository_impl_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mady/core/network/network_info.dart' as _i5;
import 'package:mady/features/offers/data/datasources/offer_remote_datasource.dart'
    as _i3;
import 'package:mady/features/offers/data/models/category_offers_list.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeCategoryOffersList_0 extends _i1.Fake
    implements _i2.CategoryOffersList {}

/// A class which mocks [OfferRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockOfferRemoteDataSource extends _i1.Mock
    implements _i3.OfferRemoteDataSource {
  MockOfferRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.CategoryOffersList> getOffers(Map<String, dynamic>? params) =>
      (super.noSuchMethod(Invocation.method(#getOffers, [params]),
              returnValue: Future<_i2.CategoryOffersList>.value(
                  _FakeCategoryOffersList_0()))
          as _i4.Future<_i2.CategoryOffersList>);
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i5.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<bool> get isConnected =>
      (super.noSuchMethod(Invocation.getter(#isConnected),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
}
