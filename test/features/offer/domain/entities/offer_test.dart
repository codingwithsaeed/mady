import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mady/features/offers/domain/entities/offer/offer.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  test('test offer entity', () {
    const tOffer = Offer(
        oid: "14",
        content:
            "\u062c\u0648\u062c\u0647 \u06a9\u0628\u0627\u0628 \u0631\u0698\u06cc\u0645\u06cc ",
        date: "1401-01-18",
        sTime: "1401-01-18",
        eTime: "20:42",
        price: "60000",
        percent: "20",
        currentPrice: "40000",
        picture: "http://192.168.1.2/mady/uploads/offerpics/DajSkPI0Pg.jpeg",
        count: "20",
        sid: "9",
        storeName:
            "\u0631\u0633\u062a\u0648\u0631\u0627\u0646 \u0633\u0639\u06cc\u062f",
        address:
            "\u0627\u0635\u0641\u0647\u0627\u0646\u060c \u0645\u062c\u0645\u0648\u0639\u0647 \u06f1\u06f9\u06f3",
        website: "https://codingwithsaeed.ir",
        logo: "http://192.168.1.2/mady/uploads/logo/SVrQM7.jpeg",
        lat: "32.6231233315521",
        lng: "51.68252896517515",
        distance: "5.62");
    final json = fixture('offer/offer.json');
    final offer = Offer.fromJson(jsonDecode(json));
    expect(offer, tOffer);
  });
}
