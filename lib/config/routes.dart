import 'package:desafio_mi/pages/auth/auth_page.dart';
import 'package:desafio_mi/pages/measurement/measurement_page.dart';

import 'package:desafio_mi/pages/enter_code/enter_code_page.dart';
import 'package:desafio_mi/pages/home/home_page.dart';
import 'package:desafio_mi/pages/new_measurement/new_measurement_page.dart';
import 'package:desafio_mi/pages/select_gas_pumps/select_gas_pumps_page.dart';
import 'package:flutter/material.dart';

var routes = <String, WidgetBuilder>{
  '/': (context) => HomePage(),
  '/auth': (context) => AuthPage(),
  NewMeasurementPage.routeName: (context) => NewMeasurementPage(),
  EnterCodePage.routeName: (context) => EnterCodePage(),
  MeasurementPage.routeName: (context) => MeasurementPage(),
  SelectGasPumpsPage.routeName: (context) => SelectGasPumpsPage(),
};
