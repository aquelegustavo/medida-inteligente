import 'package:desafio_mi/main.dart';
import 'package:desafio_mi/pages/auth_page.dart';
import 'package:desafio_mi/pages/measurement/measurement_page.dart';

import 'package:desafio_mi/pages/new_measurement/enter_code_page.dart';
import 'package:desafio_mi/pages/home_page.dart';
import 'package:desafio_mi/pages/new_measurement/new_measurement_page.dart';
import 'package:desafio_mi/pages/select_gas_pumps/select_gas_pumps_page.dart';
import 'package:flutter/material.dart';

var routes = <String, WidgetBuilder>{
  '/': (context) => HomePage(),
  '/auth': (context) => AuthPage(),
  '/new': (context) => NewMeasurementPage(),
  '/new/entercode': (context) => EnterCodePage(),
  '/measurement': (context) => MeasurementPage(),
  '/select': (context) => SelectGasPumpsPage(),
  // Depuração
  '/counter': (context) => MyHomePage(
        title: 'Depuração da aplicação',
      ),
};
