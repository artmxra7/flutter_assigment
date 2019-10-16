// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'package:flutter_assignment/text.dart';
import 'package:flutter_assignment/textController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _indexText = 0;

  void _reset() {
    setState(() {
      _indexText = 0;
    });
  }

  void _nextText() {
    if (_indexText < _dataText.length) {
      setState(() {
        _indexText = _indexText + 1;
      });
    } else {
      _indexText = 0;
    }
  }

  final _dataText = const [
    'Hello My Name is Erwin',
    'Now im learning a Flutter',
    'Im from Indonesia',
    'Thanks For Instruction me',
    'Sorry bad English',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Flutter Assigment'),
          centerTitle: true,
        ),
        body: Center(
          child: _indexText < _dataText.length
              ? Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 150.0),
                    child: Column(
                      children: <Widget>[
                        ThisText(
                          textContent: _dataText[_indexText],
                        ),
                        InitButton(
                          buttonHandler: _nextText,
                        ),
                      ],
                    ),
                  ),
                )
              : Container(
                padding: EdgeInsets.only(top: 150.0),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Thanks for Teach Me",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                      RaisedButton(
                        child: Text(
                          'Back',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.black,
                        onPressed: _reset,
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
