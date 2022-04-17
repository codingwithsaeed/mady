import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mady/core/utils/show_snackbar.dart';
import 'package:mady/features/user/domain/entities/user.dart';

class SellectAddressPage extends StatefulWidget {
  static const id = 'SellectAddress';
  final User user;
  const SellectAddressPage({Key? key, required this.user}) : super(key: key);

  @override
  State<SellectAddressPage> createState() => _SellectAddressPageState();
}

class _SellectAddressPageState extends State<SellectAddressPage> {
  late Set<Marker> markers;

  @override
  void initState() {
    super.initState();
    markers = {}..add(Marker(
        markerId: const MarkerId('0'),
        position: LatLng(
            double.parse(widget.user.lat), double.parse(widget.user.lng))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('انتخاب آدرس'),
        automaticallyImplyLeading: true,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                if (markers.isEmpty) {
                  showSnackbar(context, message: 'مکان مورد نظر را لمس کنید');
                  return;
                }
                Navigator.pop(context, markers.first.position);
              },
              icon: const Icon(Icons.check)),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
            double.parse(widget.user.lat),
            double.parse(widget.user.lng),
          ),
          zoom: 16.8,
        ),
        markers: markers,
        onTap: (pos) {
          setState(() {
            markers.clear();
            markers.add(Marker(markerId: const MarkerId('0'), position: pos));
          });
          log(markers.toString());
        },
      ),
    );
  }
}
