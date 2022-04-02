import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mady/core/errors/exception.dart';
import 'package:mady/core/network/api_provider.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'api_provider_impl_test.mocks.dart';

@GenerateMocks([Client])
void main() {
  late ApiProviderImpl provider;
  late MockClient client;

  setUp(() {
    client = MockClient();
    provider = ApiProviderImpl(client);
  });

  group('Testing api provider', () {
    test('should throw [ServerException] on [TimeOutException] from Client',
        () async {
      when(client.post(any, body: anyNamed('body')))
          .thenThrow(TimeoutException('', const Duration(seconds: 5)));
      final result = provider.post;
      expect(result(Uri.parse('uri'), params: {}),
          throwsA(const TypeMatcher<ServerException>()));
    });

    test('should throw [ServerException] on [Exception] from Client', () async {
      when(client.post(any, body: anyNamed('body'))).thenThrow(Exception());
      final result = provider.post;
      expect(result(Uri.parse('uri'), params: {}),
          throwsA(const TypeMatcher<ServerException>()));
    });

    test('should throw [ServerException] if response statusCode is not 200',
        () async {
      when(client.post(any, body: anyNamed('body')))
          .thenAnswer((_) async => Response('', 404));
      final result = provider.post;
      expect(result(Uri.parse('uri'), params: {}),
          throwsA(const TypeMatcher<ServerException>()));
    });
  });
}
