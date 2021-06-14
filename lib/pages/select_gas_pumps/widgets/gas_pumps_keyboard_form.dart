import 'package:desafio_mi/components/default_button.dart';
import 'package:desafio_mi/models/gas_station_pump_model/gas_station_pump_model.dart';
import 'package:desafio_mi/pages/measurement/measurement_page.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:desafio_mi/config/app_colors.dart';

class GasPumpsKeyboard extends StatefulWidget {
  GasPumpsKeyboard(
      {Key? key, required this.gasStationPumpsList, required this.gasStationId})
      : super(key: key);

  final List<GasStationPumpModel> gasStationPumpsList;
  final String gasStationId;

  @override
  _GasPumpsKeyboardState createState() => _GasPumpsKeyboardState();
}

class _GasPumpsKeyboardState extends State<GasPumpsKeyboard> {
  dynamic _selectedIndex;

  void _setSelected(String index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    /*
      Quando o usuário seleciona a bomba, uma borda verde é desenhada.
      Com isso, o Wrap desalinhavam pois todos os componentes tinham 
      que se reajustar para liderem com o novo elemento que mudou se tamanho.
      Assim, a solução é envolver todo o contexto dentro de uma SizedBox.
      
      Material, Ink e InkWell foram utilizados para trazer a aparência de botões,
      como o splash ao clicar, elevação e etc.
     */
    return Column(
      children: <Widget>[
        Center(
          child: Wrap(
            spacing: 16.0, //space x
            runSpacing: 12.0, //space y
            children: widget.gasStationPumpsList
                .map(
                  (item) => SizedBox(
                    width: 92,
                    height: 56,
                    child: Material(
                      elevation: 1,
                      borderRadius: BorderRadius.circular(6),
                      child: Ink(
                        decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius: BorderRadius.circular(6),
                          border: item.id == _selectedIndex
                              ? Border.all(width: 4, color: AppColors.green)
                              : null,
                        ),
                        child: InkWell(
                          onTap: () => {_setSelected(item.id)},
                          borderRadius: BorderRadius.circular(6),
                          child: Badge(
                            showBadge: item.id == _selectedIndex,
                            badgeColor: AppColors.green,
                            badgeContent: Icon(Icons.done,
                                size: 16,
                                color: Theme.of(context).backgroundColor,
                                semanticLabel: "Bomba selecionada"),
                            child: Text(
                              item.title,
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        SizedBox(height: 48),
        DefaultButton(
          text: 'Próximo',
          action: _selectedIndex != null
              ? () {
                  Navigator.pushNamed(context, MeasurementPage.routeName);
                }
              : null,
        ),
      ],
    );
  }
}
