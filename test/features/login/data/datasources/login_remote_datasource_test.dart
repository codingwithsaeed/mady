import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mady/core/errors/exception.dart';
import 'package:mady/core/network/api_provider.dart';
import 'package:mady/features/login/data/datasources/login_remote_datasource.dart';
import 'package:mady/features/user/domain/entities/user.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../../../../fixtures/fixture_reader.dart';
import 'login_remote_datasource_test.mocks.dart';

@GenerateMocks([ApiProvider])
void main() {
  late LoginRemoteDatasourceImpl sut;
  late MockApiProvider provider;

  setUp(() {
    provider = MockApiProvider();
    sut = LoginRemoteDatasourceImpl(provider);
  });

  group('Testing Authenticate', () {
    const tParams = <String, dynamic>{'action': 'signin'};
    const tUser = User(
        uid: '1',
        name: 'سعید',
        phone: '09136581814',
        email: '',
        lat: '32.657225',
        lng: '51.677574');
    test(
      "Should perform a post request to Server",
      () async {
        //arrange
        when(provider.post(any, params: anyNamed('params'))).thenAnswer(
            (_) async => Response(fixture('login/success_login.json'), 200));
        //act
        await sut.call(tParams);
        //assert
        verify(provider.post(currentDataUrl, params: tParams));
        verifyNoMoreInteractions(provider);
      },
    );

    test(
      "Should return a User if login is succeed",
      () async {
        //arrange
        when(provider.post(any, params: anyNamed('params'))).thenAnswer(
            (_) async => Response(fixture('login/success_login.json'), 200));
        //act
        final result = await sut.call(tParams);
        //assert
        expect(result, tUser);
      },
    );

    test(
      "Should throw [ServerException] if login is not succeed",
      () async {
        //arrange
        when(provider.post(any, params: anyNamed('params'))).thenAnswer(
            (_) async => Response(fixture('login/failed_login.json'), 200));
        //act
        final result = sut.call;
        //assert
        expect(result(tParams), throwsA(const TypeMatcher<ServerException>()));
      },
    );
  });
}
