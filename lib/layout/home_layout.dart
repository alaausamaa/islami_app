import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/hades/hadeth_view.dart';
import 'package:islami_app/quran/quran_view.dart';
import 'package:islami_app/radio/radio_view.dart';
import 'package:islami_app/setting/setting_view.dart';
import 'package:islami_app/tasbeh/tasbeh_view.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({super.key});

  static const String routeName = "Home_Layout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens = [
    Quran_view(),
    HadethView(),
    Sebha(),
    RadioView(),
    SettingView()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg3.png"), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islami),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFB7935F),
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                  "assets/images/moshaf.png",
                )),
                label: AppLocalizations.of(context)!.quran,
                backgroundColor: Color(0xFFB7935F)),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran.png")),
                label: AppLocalizations.of(context)!.hadeth,
                backgroundColor: Color(0xFFB7935F)),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: AppLocalizations.of(context)!.tasbeh,
                backgroundColor: Color(0xFFB7935F)),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: AppLocalizations.of(context)!.radio,
                backgroundColor: Color(0xFFB7935F)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: AppLocalizations.of(context)!.setting,
                backgroundColor: Color(0xFFB7935F)),
          ],
        ),
      ),
    );
  }
}
