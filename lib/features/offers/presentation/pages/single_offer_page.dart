import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mady/core/utils/consts.dart';
import 'package:mady/core/utils/utils.dart';
import 'package:mady/core/x/x_widgets.dart';
import 'package:mady/features/offers/domain/entities/offer/offer.dart';
import 'package:mady/core/utils/utils.dart';

class SingleOfferPage extends StatelessWidget {
  static const id = 'SingleOfferPage';
  SingleOfferPage({Key? key}) : super(key: key);
  String reserveCount = "1";

  @override
  Widget build(BuildContext context) {
    final Offer offer = ModalRoute.of(context)!.settings.arguments as Offer;
    return Scaffold(
      body: buildBody(context, offer),
    );
  }

  Widget buildBody(BuildContext context, Offer offer) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: true,
          flexibleSpace: FlexibleSpaceBar(
            background: ColorFiltered(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.65), BlendMode.luminosity),
              child: Image.network(
                offer.picture,
                fit: BoxFit.fill,
              ),
            ),
            collapseMode: CollapseMode.parallax,
            title: Text(
              offer.content,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
            centerTitle: true,
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))),
          expandedHeight: 200,
          pinned: true,
          floating: true,
        ),
        SliverToBoxAdapter(
          child: content(offer),
        ),
      ],
    );
  }

  Widget content(Offer offer) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 3.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'قیمت:',
                        style: TextStyle(fontSize: 20.0, color: Colors.black54),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        Utils.numberFormatter(offer.price),
                        style: const TextStyle(
                            fontSize: 20.0,
                            decoration: TextDecoration.lineThrough),
                        textDirection: TextDirection.rtl,
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        Utils.numberFormatter(offer.currentPrice),
                        style: TextStyle(
                            fontSize: 20.0, color: Colors.purple.shade800),
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                  horizontalTitleGap: 10.0,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 15)),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 3.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'تاریخ:',
                        style: TextStyle(fontSize: 20.0, color: Colors.black54),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        offer.date,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.purple.shade800,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                      const Spacer(),
                      Text(
                        '${offer.eTime} - ${offer.sTime}',
                        style: const TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                  horizontalTitleGap: 10.0,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 15)),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          XDetailsCard(
            name: 'تعداد باقی مانده:',
            value: offer.count,
            padding: 8.0,
            radius: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: int.parse(offer.count) >= 1
                ? Row(
                    children: [
                      Expanded(
                        child: XDropDown<String>(
                            hint: 'تعداد',
                            value: reserveCount.toString(),
                            height: 60,
                            items: comuteReserveCount(offer.count),
                            padding: 0,
                            onChanged: (index) {
                              reserveCount = index!;
                              log(reserveCount);
                            }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: XButton(
                        onPressed: () {},
                        title: 'رزرو',
                        padding: 0,
                        color: Colors.purple.shade800,
                      ))
                    ],
                  )
                : XButton(
                    onPressed: () {},
                    title: 'غیرقابل رزرو',
                    padding: 0,
                    color: Colors.grey.shade700,
                  ),
          ),
          XDetailsCard(
            name: 'فروشگاه:',
            value: offer.storeName,
            padding: 8.0,
            radius: 15.0,
          ),
          XDetailsCard(
            name: 'آدرس:',
            value: offer.address,
            padding: 8.0,
            radius: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: SizedBox(
                width: double.infinity,
                height: 300,
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(
                      double.parse(offer.lat),
                      double.parse(offer.lng),
                    ),
                    zoom: 15.8,
                  ),
                  markers: {
                    Marker(
                      markerId: const MarkerId("1"),
                      position: LatLng(
                        double.parse(offer.lat),
                        double.parse(offer.lng),
                      ),
                    )
                  },
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      );

  List<DropdownMenuItem<String>> comuteReserveCount(String count) {
    if (int.parse(count) >= 3) return reserveListCount;
    if (int.parse(count) == 2) return reserveListCount.sublist(0, 2);
    return reserveListCount.sublist(0, 1);
  }
}
