import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  TextSection({Key? key, required this.title, required this.content})
      : super(key: key);

  final String title;
  final List<Map<String, String>> content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SelectableText(
          title,
          style: Theme.of(context).textTheme.headline3,
        ),
        SizedBox(height: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: content
              .map(
                (item) => SelectableText.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: "${item['label']}: ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: item['text']),
                    ],
                  ),
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
