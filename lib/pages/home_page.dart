import 'package:desafio_mi/components/app_bar.dart';
import 'package:desafio_mi/config/app_colors.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBarComponent(),
      body: Column(
        children: <Widget>[_NewMeasurementsSection()],
      ),
    );
  }
}

class _NewMeasurementsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            color: AppColors.lightBlue,
            height: MediaQuery.of(context).size.width > 768 ? 280 : 220),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
            width: MediaQuery.of(context).size.width > 768 ? 768 : 560,
            child: Column(
              children: <Widget>[
                Row(
                  // Ripple
                  children: <Widget>[
                    SelectableText(
                      "Olá, ",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                    SelectableText(
                      "Gustavo",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w800,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
                // Sepacer
                SizedBox(height: 48),
                // Botão "Nova medição"
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/new');
                  },
                  child: Container(
                    padding: MediaQuery.of(context).size.width > 768
                        ? EdgeInsets.symmetric(horizontal: 24.0, vertical: 62.0)
                        : EdgeInsets.all(24.0),
                    width: MediaQuery.of(context).size.width > 768 ? 460 : 295,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(Icons.add,
                              color: Theme.of(context).primaryColor,
                              size: 48,
                              semanticLabel: "Ícone adicionar"),
                        ),
                        SizedBox(height: 4),
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Text(
                            "Nova Medição",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).backgroundColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
