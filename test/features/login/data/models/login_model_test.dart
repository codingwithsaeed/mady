import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mady/features/login/data/models/login_model.dart';
import 'package:mady/features/user/domain/entities/user.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  group('Testing LoginModel', () {
    const tLoginModel = LoginModel(
      1,
      User(
          uid: '1',
          name: 'سعید',
          phone: '09136581814',
          email: '',
          lat: '32.657225',
          lng: '51.677574'),
    );
    const tLoginModel2 = LoginModel(0, null);
    test(
      "Should return a solid LoginModel on SuccessLogin",
      () async {
        //arrange
        final json = fixture('login/success_login.json'); 
        final model = LoginModel.fromJson(jsonDecode(json));
        expect(model, tLoginModel);
      },
    );

    test(
      "Should return a solid LoginModel when LoginFailed",
      () async {
        //arrange
        final json = fixture('login/failed_login.json'); 
        final model = LoginModel.fromJson(jsonDecode(json));
        expect(model, tLoginModel2);
      },
    );
  });
}
