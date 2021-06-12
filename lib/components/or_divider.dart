import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 32.0),
        Container(
          width: 320,
          child: Opacity(
            opacity: 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    color: Theme.of(context).textTheme.bodyText1?.color,
                    height: 1.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: SelectableText("ou", textAlign: TextAlign.center),
                ),
                Expanded(
                  child: Container(
                    color: Theme.of(context).textTheme.bodyText1?.color,
                    height: 1.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 32.0),
      ],
    );
  }
}
