// Código por Gustavo Simões
// https://github.com/gustavo-simoes

import 'package:desafio_mi/components/app_bar.dart';
import 'package:flutter/material.dart';

class AppBody extends StatelessWidget {
  AppBody({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(),
      body: SingleChildScrollView(
        child: Center(child: child),
      ),
    );
  }
}
