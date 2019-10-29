import 'package:flutter/material.dart';

import './custom_text.dart';
import './custom_text_control.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  final String _buttonText = 'Change text';
  final String _title = 'Flutter Assignment';
  final List _textList = ['Hello Max!', 'Your are awesome!'];

  var _currentTextIndex = 0;

  _handleTextChange() {
    setState(() {
      if (_currentTextIndex < _textList.length - 1) {
        _currentTextIndex += 1;
      } else {
        _currentTextIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              CustomText(
                text: _textList[_currentTextIndex],
              ),
              CustomTextControl(
                buttonText: _buttonText,
                handleTextChange: _handleTextChange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
