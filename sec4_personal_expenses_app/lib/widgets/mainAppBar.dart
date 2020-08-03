import 'package:flutter/material.dart';

AppBar mainAppBar = AppBar(
  leading: Icon(
    Icons.menu,
    color: Colors.white,
  ),
  titleSpacing: 0.0,
  title: Image.asset('assets/img/logov1.png', scale: 2.1),
  centerTitle: true,
  flexibleSpace: Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[Color(0xff5ffe8a), Color(0xff6fcf97)],
    )),
  ),
  actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.search,
        color: Colors.white,
      ),
      onPressed: () {},
    ),
  ],
);
