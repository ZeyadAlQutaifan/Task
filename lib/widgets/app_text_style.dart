import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  FontWeight fontWeight;


  AppText({
    Key? key,
    this.color=const Color(0xFFccc7c5),
    required this.text,
    this.size = 12,
    this.fontWeight = FontWeight.bold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: true,
      maxLines: 2,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
