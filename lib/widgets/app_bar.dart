import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
import '../constant/constant.dart';
import 'curve_cliper.dart';

class CustomAppBar extends StatefulWidget {
  final String title;
  final VoidCallback press;

  const CustomAppBar({Key? key, required this.title, required this.press})
      : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  // increase counter value by 1 every minute
  void counter() async {

      await Future.delayed(const Duration(minutes: 1));
      kCount += 1;

    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    counter();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
        child: Stack(children: [
      ClipPath(
        clipper: CurveClipper(),
        child: Container(
          color: AppColors.goldColor,
          height: 175,
        ),
      ),
      ClipPath(
        clipper: CurveClipper(),
        child: Container(
          color: AppColors.redColor,
          height: 170,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              Text(
                widget.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                ),
              ),
              SizedBox(width: 30),
            ],
          ),
        ),
      ),
      Positioned(
        top: height / 12,
        left: width / 45,
        child: GestureDetector(
          child: Badge(
            elevation: 0.0,
            child: const Icon(
              Icons.notifications,
              size: 32,
              color: Colors.white,
            ),
            //icon style
            badgeContent: Container(
              width: 18,
              height: 18,
              margin: const EdgeInsets.only(right: 2),
              decoration: BoxDecoration(
                color: AppColors.goldColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  kCount.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            badgeColor: AppColors.redColor,
          ),
          onTap: widget.press,
        ),
      )
    ]));
  }
}
