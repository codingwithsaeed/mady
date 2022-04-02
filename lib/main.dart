import 'package:flutter/material.dart';
import 'package:mady/core/utils/consts.dart';
import 'package:mady/core/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: localization,
      supportedLocales: supportedLocales,
      title: 'مادی',
      theme: lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('مادی'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
