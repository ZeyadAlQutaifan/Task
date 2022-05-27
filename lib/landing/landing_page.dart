import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
import '../screens/contactUs.dart';
import '../screens/home.dart';
import '../widgets/app_bar.dart';
class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _pageIndex = 1 ;
  String title = 'الصفحة الرئيسية';

  void loadPage(){
    setState(() {
     _pageIndex = 2;
     title = 'اتصل بنا' ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          child: Stack(
            children: [
              CustomAppBar(title: title, press:loadPage),
              _pageIndex == 1 ? Home() : ContactUs(),

            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton:floatingActionButton(),
        bottomNavigationBar: bottomAppBar()

    );
  }


  FloatingActionButton floatingActionButton(){
    return  FloatingActionButton(
      onPressed: (){},
      backgroundColor: AppColors.goldColor,
      child: Icon(Icons.home , color: Colors.white,),
      elevation: 2.0,
    );
  }
  BottomAppBar bottomAppBar(){
    return BottomAppBar(
      clipBehavior: Clip.antiAlias,
      notchMargin: 3,
      shape: CircularNotchedRectangle(),
      child: Wrap(
        children: [
          BottomNavigationBar(
            backgroundColor: AppColors.redColor,
            type: BottomNavigationBarType.fixed,
            currentIndex: 0,
            onTap: (int index) {},
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'البحث'),
              BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'الخدمات'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'الحساب'),
              BottomNavigationBarItem(icon: Icon(Icons.headset_mic), label: 'اتصل بنا'),
            ],
          ),
        ],
      ),
    );
  }
}
