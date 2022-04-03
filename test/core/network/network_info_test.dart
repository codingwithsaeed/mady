import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mady/core/network/network_info.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'network_info_test.mocks.dart';

@GenerateMocks([Connectivity])
void main() {
  late NetworkInfoImpl sut;
  late MockConnectivity connectivity;

  setUp(() {
    connectivity = MockConnectivity();
    sut = NetworkInfoImpl(connectivity);
  });

  group('Testing is connected', () {
    test(
      "Should return false if not connected to internet",
      () async {
        //arrange
        when(connectivity.checkConnectivity())
            .thenAnswer((_) async => ConnectivityResult.none);
        //act
        final result = await sut.isConnected;
        //assert
        expect(result, false);
      },
    );

    test(
      "Should return true if connected to internet",
      () async {
        //arrange
        when(connectivity.checkConnectivity())
            .thenAnswer((_) async => ConnectivityResult.wifi);
        //act
        final result = await sut.isConnected;
        //assert
        expect(result, true);
      },
    );
  });
}
