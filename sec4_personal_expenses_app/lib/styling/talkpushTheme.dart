import 'package:flutter/material.dart';
import 'package:sec4_personal_expenses_app/styling/colorMaps.dart';

final ThemeData talkpushTheme = ThemeData(
    primarySwatch: MaterialColor(0xff5ffe8a, primaryColorMap),
    accentColor: Color(0xff132c3a),
    fontFamily: 'QuickSand',
    textTheme: ThemeData.light().textTheme.copyWith(
        headline6: TextStyle(
            fontFamily: 'OpenSans', fontWeight: FontWeight.bold, fontSize: 18)),
    appBarTheme: AppBarTheme(
        textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20,
            ))));
