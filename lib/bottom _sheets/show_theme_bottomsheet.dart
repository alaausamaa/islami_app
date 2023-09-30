import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/provider/provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<AppProvider>(context);
    return Container(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppLocalizations.of(context)!.light,
                        style: theme.textTheme.bodyLarge!.copyWith(
                            color: provider.currenttheme == ThemeMode.light
                                ? Colors.white
                                : Colors.black)),
                    provider.currenttheme == ThemeMode.light
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                            size: 30,
                          )
                        : SizedBox.shrink(),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppLocalizations.of(context)!.dark,
                        style: theme.textTheme.bodyMedium!.copyWith(
                            color: provider.currenttheme == ThemeMode.dark
                                ? Colors.white
                                : Colors.black)),
                    provider.currenttheme == ThemeMode.dark
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                            size: 30,
                          )
                        : SizedBox.shrink()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
