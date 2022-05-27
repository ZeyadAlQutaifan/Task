import 'package:flutter/material.dart';
class CustomCircleIcon extends StatelessWidget {
  final Icon iconData;

  final Color? backColor;
  const CustomCircleIcon({Key? key , required this.iconData , required this.backColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 40,
      height: 40,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: iconData
    );
  }
}
