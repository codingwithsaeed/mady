import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mady/core/errors/exception.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/core/network/network_info.dart';
import 'package:mady/features/login/data/datasources/login_local_datasource.dart';
import 'package:mady/features/login/data/datasources/login_remote_datasource.dart';
import 'package:mady/features/login/data/repositories/login_repository_impl.dart';
import 'package:mady/features/user/domain/entities/user.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'login_repository_impl_test.mocks.dart';

@GenerateMocks([LoginRemoteDatasource, NetworkInfo, LoginLocalDatasource])
void main() {
  late LoginRepositoryImpl sut;
  late MockLoginRemoteDatasource remoteDatasource;
  late MockLoginLocalDatasource localDatasource;
  late MockNetworkInfo networkInfo;

  setUp(() {
    networkInfo = MockNetworkInfo();
    localDatasource = MockLoginLocalDatasource();
    remoteDatasource = MockLoginRemoteDatasource();
    sut = LoginRepositoryImpl(
        remote: remoteDatasource,
        local: localDatasource,
        networkInfo: networkInfo);
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
        when(remoteDatasource.call(any)).thenAnswer((_) async => tUser);
        //act
        final result = await sut.call(tApiparams);
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
        when(localDatasource.saveUser(any, any)).thenAnswer((_) async => true);
        when(remoteDatasource.call(any)).thenAnswer((_) async => tUser);
        //act
        final result = await sut.call(tApiparams);
        //assert
        expect(result, const Right(tUser));
        verify(remoteDatasource.call(tParams));
        verifyNoMoreInteractions(remoteDatasource);
      },
    );
    test(
      "Should return GeneralFailure if datasource throws a [ServerException]",
      () async {
        //arrange
        when(networkInfo.isConnected).thenAnswer((_) async => true);
        when(remoteDatasource.call(any))
            .thenThrow(ServerException(message: noInternt));
        //act
        final result = await sut.call(tApiparams);
        //assert
        expect(result, Left(GeneralFailure(message: noInternt)));
      },
    );
  });
}
