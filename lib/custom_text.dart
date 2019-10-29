import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;

  CustomText({
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Text(
        text,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
