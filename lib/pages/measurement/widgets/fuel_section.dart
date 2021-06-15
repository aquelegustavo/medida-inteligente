import 'package:desafio_mi/components/text_section.dart';
import 'package:desafio_mi/models/measurement_fuel_section_model/measurement_fuel_section_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FuelSection extends StatelessWidget {
  FuelSection({
    Key? key,
    required this.data,
  }) : super(key: key);

  final MeasurementFuelModel data;

  @override
  Widget build(BuildContext context) {
    final dateFormat = new DateFormat('dd/MM/yyyy');
    final timeFormat = new DateFormat('HH:mm');
    final timestamp =
        new DateTime.fromMillisecondsSinceEpoch(data.timestamp as int);

    return TextSection(
      divider: true,
      title: 'Dados do Abastecimento',
      content: [
        {'label': 'Bomba', 'text': data.pump.title},
        {'label': 'Dia', 'text': dateFormat.format(timestamp)},
        {'label': 'Hora', 'text': timeFormat.format(timestamp)},
        {'label': 'Volume abastecido', 'text': '${data.volume}L'},
        {'label': 'Preço/Litro', 'text': '${data.priceperliter}' + r'R$/L'},
        {'label': 'Total a pagar', 'text': r'R$' + '${data.total}'},
      ],
    );
  }
}
