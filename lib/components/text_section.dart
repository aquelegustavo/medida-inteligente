import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  TextSection({
    Key? key,
    required this.title,
    required this.content,
    this.divider = false,
  }) : super(key: key);

  final String title;
  final List<Map<String, String>> content;
  final bool divider;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (divider)
            Divider(
              height: 6,
              color: (Theme.of(context).textTheme.headline3?.color)
                  ?.withOpacity(0.4),
            ),
          if (divider)
            SizedBox(
              height: 4,
            ),
          SelectableText(
            title,
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(
            height: 8.0,
          ),
          SelectableText.rich(
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
          ),
        ],
      ),
    );
  }
}
