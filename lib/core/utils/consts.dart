import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

const localization = [
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];

const supportedLocales = [
  Locale('fa'),
];

const userKey = 'user';


final List<DropdownMenuItem<String>> reserveListCount = [
  const DropdownMenuItem(child: Text('1'), value: '1'),
  const DropdownMenuItem(child: Text('2'), value: '2'),
  const DropdownMenuItem(child: Text('3'), value: '3'),
];

const List<String> _reserveStatusTitle = [
  "دریافت نشده",
  "دریافت شده",
  "لغو شده",
];

List<String> get reserveStatusTitle => _reserveStatusTitle;
