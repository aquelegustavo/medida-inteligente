import 'dart:js';

import 'package:desafio_mi/main.dart';
import 'package:desafio_mi/pages/auth/auth_page.dart';
import 'package:desafio_mi/pages/home/home_page.dart';
import 'package:flutter/material.dart';

var routes = <String, WidgetBuilder>{
  '/': (context) => HomePage(),
  '/auth': (context) => AuthPage(),

  // Depuração
  '/counter': (context) => MyHomePage(
        title: 'Depuração da aplicação',
      ),
};
