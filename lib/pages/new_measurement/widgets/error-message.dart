import 'package:flutter/material.dart';

class ErrorMessage extends StatefulWidget {
  ErrorMessage({Key? key, required this.code}) : super(key: key);

  final String code;

  @override
  _ErrorMessageState createState() => _ErrorMessageState();
}

class _ErrorMessageState extends State<ErrorMessage> {
  final Map<String, String> _errorMessages = {
    "not-found":
        "Não encontramos este Posto em nossos sistemas. Verifique e tente novamente.",
    "invalid-format":
        "O código inserido está em um formato inválito. Verifique e tente novamente.",
    "internal":
        "Infelizmente, houve um problema interno. Tente novamente mais tarde."
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      child: SelectableText(
        _errorMessages[widget.code] ?? '',
        textAlign: TextAlign.center,
        style: TextStyle(color: Theme.of(context).colorScheme.error),
      ),
    );
  }
}
