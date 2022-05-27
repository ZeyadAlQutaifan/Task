import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/widgets/app_bar.dart';

import '../colors/app_colors.dart';
import '../constant/constant.dart';
import '../widgets/curve_cliper.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

List<String> titles = [
  'الأحداث',
  'الفعاليات',
  'التعاميم',
  'الدليل الصناعي',
  'الخدمات الألكترونية',
  'اتصل بنا',
];
List<Icon> icons = const [
  Icon(
    Icons.calendar_today_outlined,
    size: 45,
    color: AppColors.goldColor,
  ),
  Icon(
    Icons.event_note,
    size: 45,
    color: AppColors.redColor,
  ),
  Icon(
    Icons.info,
    size: 45,
    color: AppColors.redColor,
  ),
  Icon(
    Icons.book,
    size: 45,
    color: AppColors.goldColor,
  ),
  Icon(
    Icons.settings,
    size: 45,
    color: AppColors.goldColor,
  ),
  Icon(
    Icons.call,
    size: 45,
    color: AppColors.redColor,
  ),
];

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
   // counter();
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: GridView.builder(
            padding: const EdgeInsets.only(top: 200),
            gridDelegate:
            const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1.2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 30,
            ),
            itemCount: titles.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                alignment: Alignment.center,
                height: 100,
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icons[index],
                    const SizedBox(height: 10),
                    Text(
                      titles[index],
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFE8E8E8),
                  borderRadius: BorderRadius.circular(15),
                ),
              );
            }),
      ),
    );
  }
}