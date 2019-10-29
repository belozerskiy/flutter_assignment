import 'package:flutter/material.dart';

class CustomTextControl extends StatelessWidget {
  final String buttonText;
  final Function handleTextChange;

  CustomTextControl({
    @required this.buttonText,
    @required this.handleTextChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(buttonText),
        onPressed: handleTextChange,
      ),
    );
  }
}
