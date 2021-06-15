// Código por Gustavo Simões
// https://github.com/gustavo-simoes

import 'package:flutter/material.dart';
import 'package:desafio_mi/models/measurement_authenticity_model/measurement_authenticity_model.dart';
import 'package:desafio_mi/components/text_section.dart';

class AuthenticitySection extends StatelessWidget {
  AuthenticitySection({
    Key? key,
    required this.data,
  }) : super(key: key);

  final MeasurementAuthenticityModel data;

  @override
  Widget build(BuildContext context) {
    List<String> _integrityMessages = [
      'Erro de medição',
      'Boa',
      'Regular',
      'Danificado'
    ];

    return TextSection(
      divider: true,
      title: 'Dados de Autenticidade',
      content: [
        {'label': 'Dados Medição', 'text': '${data.measurementdata}'},
        {
          'label': 'Integridade do Software',
          'text': '${_integrityMessages[data.softwareintegrity]}'
        }
      ],
    );
  }
}
