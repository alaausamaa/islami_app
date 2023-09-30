import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/core/theme/app_theme.dart';
import 'package:islami_app/hades/hadeth_details.dart';
import 'package:islami_app/layout/home_layout.dart';
import 'package:islami_app/modules/splashscreen.dart';
import 'package:islami_app/provider/provider.dart';
import 'package:islami_app/quran/widget/quran_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppProvider(), child: const MyApplication()));
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return MaterialApp(
      themeMode: provider.currenttheme,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.local),
      debugShowCheckedModeBanner: false,
      // give it key of screen to start with it
      initialRoute: SplashScreen.routeName,
      // map faster the array on search with key
      routes: {
        // call back function ( function in another place)
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeLayout.routeName: (context) => HomeLayout(),
        QuranDetails.routName: (context) => QuranDetails(),
        HadethDetails.routName: (context) => HadethDetails(),
      },
    );
  }
}
