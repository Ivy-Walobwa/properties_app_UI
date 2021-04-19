import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget(
      {Key key,
        @required this.text,
        @required this.textColor,
        @required this.buttoncolor})
      : super(key: key);

  final String text;
  final Color textColor;
  final Color buttoncolor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          backgroundColor: buttoncolor,
          side: BorderSide(color: Colors.grey[200]),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
