// ignore_for_file: unused_import

import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:mady/features/near_offers/presentation/pages/near_offers_page.dart';
import 'package:mady/features/offers/presentation/pages/offers_page.dart';
import 'package:mady/features/reserve_offer/presentation/pages/reserved_offers_page.dart';
import 'package:mady/features/profile/presentation/pages/more_page.dart';

class MainPage extends StatefulWidget {
  static const id = 'MainPage';
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int position = 0;
  late PageController _controller;
  final _pages = const <Widget>[
    OffersPage(),
    NearOffersPage(),
    ReservedOffersPage(),
    MorePage()
  ];

  final _tabs = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.local_offer_rounded),
      label: 'گشت',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.location_on),
      label: 'در نزدیکی',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.shopping_bag_rounded),
      label: 'رزروها',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.more_horiz_rounded),
      label: 'بیشتر',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tabs[position].label ?? "مادی"),
        centerTitle: true,
        elevation: 10,
        shadowColor: Colors.purple.shade800,
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
      ),
      body: PageView(
        controller: _controller,
        children: _pages,
        onPageChanged: _onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple.shade800,
        unselectedItemColor: Colors.grey,
        items: _tabs,
        currentIndex: position,
        onTap: _onItemTap,
      ),
    );
  }

  void _onItemTap(index) {
    setState(() {
      position = index;
    });
    _controller.jumpToPage(index);
  }

  void _onPageChanged(index) => setState(() {
        position = index;
      });
}
