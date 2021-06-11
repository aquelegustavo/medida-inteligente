import 'package:desafio_mi/components/app_bar.dart';
import 'package:flutter/material.dart';

class NewMeasurementPage extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBarComponent(),
      body: Column(
        children: <Widget>[Text("Nova medição")],
      ),
    );
  }
}
