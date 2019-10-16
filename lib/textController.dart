import 'package:flutter/material.dart';

class InitButton extends StatelessWidget {
  final Function buttonHandler;
  InitButton({this.buttonHandler});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      child: RaisedButton(
        child: Text(
          "Click Me ",
          style: TextStyle(color: Colors.white),
        ),
        onPressed: buttonHandler,
        color: Colors.black,
      ),
    );
  }
}
