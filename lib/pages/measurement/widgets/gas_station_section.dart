import 'package:desafio_mi/components/text_section.dart';
import 'package:desafio_mi/models/gas_station_data_model.dart/gas_station_data_model.dart';
import 'package:flutter/material.dart';

class GasStationSection extends StatelessWidget {
  GasStationSection({
    Key? key,
    required this.data,
  }) : super(key: key);

  final GasStationDataModel data;

  @override
  Widget build(BuildContext context) {
    return TextSection(
      divider: true,
      title: 'Dados do Estabelecimento',
      content: [
        {'label': 'Nome', 'text': data.name},
        {'label': 'Rua', 'text': data.location.street},
        {'label': 'Bairro', 'text': data.location.neighborhood},
        {'label': 'Cidade', 'text': data.location.city},
      ],
    );
  }
}
