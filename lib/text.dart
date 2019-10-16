import 'package:flutter/material.dart';

class ThisText extends StatelessWidget {
  final String textContent;

  ThisText({this.textContent});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        textContent,
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
