import 'package:flutter/material.dart';
import 'package:islami_app/hades/hadeth_view.dart';
import 'package:islami_app/quran/quran_view.dart';
import 'package:islami_app/radio/radio_view.dart';
import 'package:islami_app/setting/setting_view.dart';
import 'package:islami_app/tasbeh/tasbeh_view.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "home_layout";

  @override
  State<StatefulWidget> createState() => _HomeLayout();
}

class _HomeLayout extends State<HomeLayout> {
  List<Widget> screens = [
    Quran(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingView(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "assets/images/bg3.png",
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("اسلامي"),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            backgroundColor: Color(0xFFB7935F),
            items: const [
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage("assets/images/moshaf.png")),
                  label: "القران"),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(
                    AssetImage("assets/images/quran.png"),
                  ),
                  label: "الاحاديث"),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(
                    AssetImage(
                      "assets/images/sebha.png",
                    ),
                  ),
                  label: "التسبيح"),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "الراديو"),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: Icon(Icons.settings),
                  label: "الاعدادات"),
            ]),
        body: screens[index],
      ),
    ]);
  }
}
