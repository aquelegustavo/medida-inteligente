import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  TextSection({Key? key, required this.title, required this.content})
      : super(key: key);

  final String title;
  final List<Map<String, String>> content;

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(
      TextSpan(
        children: content
            .map(
              (item) => TextSpan(children: [
                TextSpan(
                  text: "${item['label']}: ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: item['text'],
                ),
                TextSpan(text: '\n')
              ]),
            )
            .toList(),
      ),
      style: Theme.of(context).textTheme.bodyText1,
    );
  }
}
