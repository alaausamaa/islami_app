import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
    Sebha(),
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
          title: Text(AppLocalizations.of(context)!.islami),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            backgroundColor: Color(0xFFB7935F),
            items: [
              BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage("assets/images/moshaf.png")),
                label: AppLocalizations.of(context)!.quran,
              ),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(
                    AssetImage("assets/images/quran.png"),
                  ),
                  label: AppLocalizations.of(context)!.hadeth),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(
                    AssetImage(
                      "assets/images/sebha.png",
                    ),
                  ),
                  label: AppLocalizations.of(context)!.tasbeh),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: AppLocalizations.of(context)!.radio),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.setting),
            ]),
        body: screens[index],
      ),
    ]);
  }
}
