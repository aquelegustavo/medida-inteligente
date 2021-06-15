// Código por Gustavo Simões
// https://github.com/gustavo-simoes

import 'package:flutter/material.dart';

import 'package:desafio_mi/pages/home/home_page.dart';
import 'package:desafio_mi/pages/new_measurement/new_measurement_page.dart';
import 'package:desafio_mi/pages/enter_code/enter_code_page.dart';
import 'package:desafio_mi/pages/select_gas_pumps/select_gas_pumps_page.dart';
import 'package:desafio_mi/pages/measurement/measurement_page.dart';

var routes = <String, WidgetBuilder>{
  '/': (context) => HomePage(),
  NewMeasurementPage.routeName: (context) => NewMeasurementPage(),
  EnterCodePage.routeName: (context) => EnterCodePage(),
  SelectGasPumpsPage.routeName: (context) => SelectGasPumpsPage(),
  MeasurementPage.routeName: (context) => MeasurementPage(),
};
