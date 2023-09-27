import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/app_theme.dart';
import 'package:islami_app/layout/home_layout.dart';
import 'package:islami_app/modules/splashscreen.dart';
import 'package:islami_app/quran/widget/quran_details.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) => const SplashScreen(),
          HomeLayout.routeName: (context) => HomeLayout(),
          QuranDetails.routName: (context) => QuranDetails()
        });
  }
}
