import 'package:desafio_mi/main.dart';
import 'package:desafio_mi/pages/auth_page.dart';
import 'package:desafio_mi/pages/home_page.dart';
import 'package:desafio_mi/pages/new_measurement_page.dart';
import 'package:flutter/material.dart';

var routes = <String, WidgetBuilder>{
  '/': (context) => HomePage(),
  '/auth': (context) => AuthPage(),
  '/new': (context) => NewMeasurementPage(),

  // Depuração
  '/counter': (context) => MyHomePage(
        title: 'Depuração da aplicação',
      ),
};
