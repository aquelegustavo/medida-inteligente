import 'package:flutter/material.dart';
import 'package:desafio_mi/components/app_body.dart';

class MeasurementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBody(
      child: Container(
          padding: EdgeInsets.all(24.0), width: 560.0, child: Text("Medição")),
    );
  }
}
