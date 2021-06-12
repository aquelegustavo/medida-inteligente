import 'package:flutter/material.dart';
import 'dart:async';
import 'package:desafio_mi/components/default_button.dart';
import 'package:desafio_mi/config/app_colors.dart';
import 'package:desafio_mi/pages/new_measurement/widgets/error-message.dart';

class CodeForm extends StatefulWidget {
  @override
  _CodeFormState createState() => _CodeFormState();
}

class _CodeFormState extends State<CodeForm> {
  bool _isTyping = false;
  dynamic _timerTyping; // Null || Timer
  bool _isCodeValid = false;
  String _erroCode = '';
  bool _isVerifyingCode = false;

  _onChangeHandler(String value) {
    setState(() {
      _isTyping = true; // User está digitando
      _erroCode = ''; //limpando msg de erro
    });
    /*
      A função _timerTyping é limpa toda vez que o 
      input muda de conteúdo (usuário digitando),
      de modo que, a função que busca pelo cógigo 
      do posto só é chamada depois do usuário 
      terminar de digitar o código.
     */
    if (_timerTyping != null) {
      _timerTyping.cancel();
      _timerTyping = null;
    }
    _timerTyping = Timer(
      Duration(milliseconds: 800),
      () => {
        //Função só será executada 0.8s depois do usuário teminar de digitar
        setState(
          () {
            _isTyping = false; // User não está digitando
          },
        ),
        _verifyCode(value),
      },
    );
  }

  _verifyCode(String value) {
    setState(
      () {
        _isCodeValid = false;
        _erroCode = "";
        _isVerifyingCode = true;
      },
    );

    // Código: 6 números 2 letras
    if (RegExp('[0-9]{6}[a-zA-Z]{2}').hasMatch(value)) {
      // Simulação de chamada http
      Timer(
        Duration(seconds: 2),
        () => {
          setState(
            () {
              _isCodeValid = value.toUpperCase() == '123456SC';
              _erroCode = value.toUpperCase() == '123456SC' ? "" : "not-found";
              _isVerifyingCode = false;
            },
          )
        },
      );
    } else {
      // Código em formato inválido
      setState(
        () {
          _isCodeValid = false;
          _erroCode = "invalid-format";
          _isVerifyingCode = false;
        },
      );
    }
  }

  @override
  void dispose() {
    if (_timerTyping != null) {
      _timerTyping.cancel();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 300,
                  child: TextField(
                      onChanged: _onChangeHandler,
                      onSubmitted: _onChangeHandler,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(hintText: 'Código')),
                ),
                SizedBox(width: 16.0),
                if (_isVerifyingCode) CircularProgressIndicator(),
                if (_isCodeValid)
                  Icon(Icons.done,
                      size: 32,
                      color: AppColors.green,
                      semanticLabel: "Ícone código válido"),
              ],
            ),
          ),
          SizedBox(height: 24.0),
          ErrorMessage(code: _erroCode),
          SizedBox(height: 32.0),
          DefaultButton(
            text: 'Próximo',
            action: _isCodeValid
                ? () {
                    Navigator.pushNamed(context, '/measurement');
                  }
                : null,
          )
        ],
      ),
    );
  }
}
