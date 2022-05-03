import 'package:flutter/material.dart';

class infoItem extends StatelessWidget {
  infoItem(this.title, this.value);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        Container(
          child: Text(value),
        )
      ],
    );
  }
}
