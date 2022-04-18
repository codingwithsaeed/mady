import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mady/core/utils/consts.dart';
import 'package:mady/core/x/x_widgets.dart';
import 'package:mady/features/reserve_offer/domain/entities/reserve/reserve.dart';

class ReserveDetailsPage extends StatelessWidget {
  static const id = 'ReserveDetailsPage';
  final Reserve _reserve;

  const ReserveDetailsPage({Key? key, required Reserve reserve})
      : _reserve = reserve,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        buildAppbar(),
        SliverToBoxAdapter(
          child: buildBody(),
        ),
      ]),
    );
  }

  SliverAppBar buildAppbar() {
    return SliverAppBar(
      automaticallyImplyLeading: true,
      flexibleSpace: FlexibleSpaceBar(
        background: ColorFiltered(
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.65), BlendMode.luminosity),
          child: Image.network(_reserve.picture, fit: BoxFit.fill),
        ),
        collapseMode: CollapseMode.parallax,
        title: Text(
          _reserve.content,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
      ),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))),
      expandedHeight: 200,
      pinned: true,
      floating: true,
    );
  }

  Widget buildBody() => Column(
        children: [
          const SizedBox(height: 10),
          XDetailsCard(
            name: 'وضعیت:',
            value: reserveStatusTitle[int.parse(_reserve.status)],
            radius: 15,
          ),
          XDetailsCard(
            name: 'شماره رسید:',
            value: _reserve.receipt,
            radius: 15,
          ),
          XDetailsCard(
            name: 'تاریخ رزرو:',
            value: _reserve.date,
            radius: 15,
          ),
          XDetailsCard(
            name: 'فروشگاه:',
            value: _reserve.storeName,
            radius: 15,
          ),
          XDetailsCard(
            name: 'شماره تماس:',
            value: _reserve.phone,
            radius: 15,
          ),
          XDetailsCard(
            name: 'آدرس:',
            value: _reserve.address,
            radius: 15,
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
                      double.parse(_reserve.lat),
                      double.parse(_reserve.lng),
                    ),
                    zoom: 15.8,
                  ),
                  markers: {
                    Marker(
                      markerId: const MarkerId("1"),
                      position: LatLng(
                        double.parse(_reserve.lat),
                        double.parse(_reserve.lng),
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
}
