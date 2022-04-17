import 'package:flutter/material.dart';

class XButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color color;
  final double fontSize;
  final double padding;
  final double innerPadding;
  final double radius;
  const XButton({
    required this.onPressed,
    required this.title,
    this.color = Colors.blue,
    this.fontSize = 20.0,
    this.padding = 8.0,
    this.radius = 10.0,
    this.innerPadding = 15.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: innerPadding),
        onPressed: onPressed,
        elevation: 5.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        child: Text(
          title,
          style: TextStyle(fontSize: fontSize),
        ),
        color: color,
        textColor: Colors.white,
      ),
    );
  }
}
