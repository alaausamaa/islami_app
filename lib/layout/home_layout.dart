import 'package:flutter/material.dart';
import 'package:islami_app/hades/hadeth_view.dart';
import 'package:islami_app/quran/quran_view.dart';
import 'package:islami_app/radio/radio_view.dart';
import 'package:islami_app/setting/setting_view.dart';
import 'package:islami_app/tasbeh/tasbeh_view.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName = "home_layout";

  int selectedIndex = 0;

  List<Widget> screens = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingView(),
  ];

  HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/bg3.png",
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: const Text("اسلامي")),
          body: screens[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
              onTap: (int index) {
                selectedIndex = index;
              },
              currentIndex: selectedIndex,
              items: const [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/moshaf.png")),
                    label: "القران"),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/quran.png"),
                    ),
                    label: "الاحاديث"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                    label: "التسبيح"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/radio.png")),
                    label: "الراديو"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "الاعدادات"),
              ])),
    );
  }
}
