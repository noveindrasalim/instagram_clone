import 'package:flutter/material.dart';

class tabItem extends StatelessWidget {
  const tabItem({Key? key, required this.icon, required this.active})
      : super(key: key);

  final IconData icon;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Icon(icon),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                color: active == true ? Colors.black : Colors.white, width: 2),
          ),
        ),
      ),
    );
  }
}
