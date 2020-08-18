import 'package:flutter/material.dart';

class CardMealContentRow extends StatelessWidget {
  const CardMealContentRow({
    Key key,
    @required this.content,
    @required this.icon,
  }) : super(key: key);

  final String content;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
        ),
        SizedBox(
          width: 6,
        ),
        Text(content)
      ],
    );
  }
}
