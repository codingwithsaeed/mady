import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mady/core/errors/exception.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/core/network/network_info.dart';
import 'package:mady/features/login/data/datasources/login_remote_datasource.dart';
import 'package:mady/features/login/data/repositories/login_repository_impl.dart';
import 'package:mady/features/login/domain/entities/user.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'login_repository_impl_test.mocks.dart';

@GenerateMocks([LoginRemoteDatasource, NetworkInfo])
void main() {
  late LoginRepositoryImpl sut;
  late MockLoginRemoteDatasource datasource;
  late MockNetworkInfo networkInfo;

  setUp(() {
    networkInfo = MockNetworkInfo();
    datasource = MockLoginRemoteDatasource();
    sut = LoginRepositoryImpl(dataSource: datasource, networkInfo: networkInfo);
  });

  group('Testing authenticate', () {
    const tParams = <String, dynamic>{'action': 'signin'};
    final ApiParam tApiparams = ApiParam(value: tParams);
    const tUser = User(
        uid: '1',
        name: 'سعید',
        phone: '09136581814',
        email: '',
        lat: '32.657225',
        lng: '51.677574');

    test(
      "Should return [GeneralFailure] if device is not connected to Internet",
      () async {
        //arrange
        when(networkInfo.isConnected).thenAnswer((_) async => false);
        when(datasource.authenticate(any)).thenAnswer((_) async => tUser);
        //act
        final result = await sut.authenticate(tApiparams);
        //assert
        expect(result, Left(GeneralFailure(message: noInternt)));
        verify(networkInfo.isConnected);
        verifyNoMoreInteractions(networkInfo);
      },
    );

    test(
      "Should return User if operation is succeed",
      () async {
        //arrange
        when(networkInfo.isConnected).thenAnswer((_) async => true);
        when(datasource.authenticate(any)).thenAnswer((_) async => tUser);
        //act
        final result = await sut.authenticate(tApiparams);
        //assert
        expect(result, const Right(tUser));
        verify(datasource.authenticate(tParams));
        verifyNoMoreInteractions(datasource);
      },
    );
    test(
      "Should return GeneralFailure if datasource throws a [ServerException]",
      () async {
        //arrange
        when(networkInfo.isConnected).thenAnswer((_) async => true);
        when(datasource.authenticate(any)).thenThrow(ServerException(message: noInternt));
        //act
        final result = await sut.authenticate(tApiparams);
        //assert
        expect(result, Left(GeneralFailure(message: noInternt)));
      },
    );
  });
}
