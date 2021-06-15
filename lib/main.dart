// Código por Gustavo Simões
// https://github.com/gustavo-simoes

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './config/app_theme.dart';
import 'config/routes.dart';
import 'models/gas_station_change_notifier_model/gas_station_change_notifier_model.dart';
import 'package:sentry_flutter/sentry_flutter.dart'; // Debub erros

Future<void> main() async {
  /*
    Informar ao serviço terceiro Sentry 
    caso o app crashe.
  */
  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://1aedebdd21ed41448533213685e2126d@o825152.ingest.sentry.io/5811079';
    },
    appRunner: () => runApp(AppMedidaInteligente()),
  );
}

class AppMedidaInteligente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => GasStationChangeNotifierModel()),
      ],
      child: MaterialApp(
        title: 'Medida Inteligente',
        themeMode: ThemeMode.light,
        theme: AppTheme.lightThemeData,
        darkTheme: AppTheme.darkThemeData,
        initialRoute: '/',
        routes: routes,

        // Desabilitando bunner "debug"
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
