import 'package:desafio_mi/components/app_bar.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBarComponent(),
      body: Hero(
        tag: 'a',
        child: Column(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Página Auth',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
