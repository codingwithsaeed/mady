// Mocks generated by Mockito 5.1.0 from annotations
// in mady/test/features/login/data/repositories/login_repository_impl_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mady/core/network/network_info.dart' as _i5;
import 'package:mady/features/login/data/datasources/login_remote_datasource.dart'
    as _i3;
import 'package:mady/features/login/domain/entities/user.dart' as _i2;
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

class _FakeUser_0 extends _i1.Fake implements _i2.User {}

/// A class which mocks [LoginRemoteDatasource].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoginRemoteDatasource extends _i1.Mock
    implements _i3.LoginRemoteDatasource {
  MockLoginRemoteDatasource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.User> authenticate(Map<String, dynamic>? params) =>
      (super.noSuchMethod(Invocation.method(#authenticate, [params]),
              returnValue: Future<_i2.User>.value(_FakeUser_0()))
          as _i4.Future<_i2.User>);
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
