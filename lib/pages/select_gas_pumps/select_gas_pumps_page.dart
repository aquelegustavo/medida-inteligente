import 'package:flutter/material.dart';
import 'package:desafio_mi/components/app_body.dart';
import 'package:desafio_mi/pages/select_gas_pumps/widgets/gas_pumps_keyboard_form.dart';

class SelectGasPumpsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBody(
      child: Container(
          padding: EdgeInsets.all(24.0),
          width: 560.0,
          child: GasPumpsKeyboard(title: 'title')),
    );
  }
}
