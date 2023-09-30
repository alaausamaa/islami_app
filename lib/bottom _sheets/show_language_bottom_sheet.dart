import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(color: Color(0xFFB7935F)),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                provider.changeLanguage("en");
              },
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppLocalizations.of(context)!.english,
                        style: theme.textTheme.bodyMedium!.copyWith(
                            color: provider.local == "ar"
                                ? Colors.black
                                : Colors.black)),
                    provider.local == "en"
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
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                provider.changeLanguage("ar");
              },
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppLocalizations.of(context)!.arabic,
                        style: theme.textTheme.bodyMedium!.copyWith(
                            color: provider.local == "ar"
                                ? Colors.black
                                : Colors.black)),
                    provider.local == "ar"
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
