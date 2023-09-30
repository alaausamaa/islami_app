import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Language",
            textAlign: TextAlign.start,
            style: theme.textTheme.bodyLarge,
          ),
          GestureDetector(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              height: 70,
              width: mediaQuery.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: theme.primaryColor,
                    width: 2.2,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("English"), Icon(Icons.arrow_drop_down_sharp)],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Theme Mode",
            textAlign: TextAlign.start,
            style: theme.textTheme.bodyLarge,
          ),
          GestureDetector(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              height: 70,
              width: mediaQuery.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: theme.primaryColor,
                    width: 2.2,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Dark"), Icon(Icons.arrow_drop_down_sharp)],
              ),
            ),
          )
        ],
      ),
    );
  }

  void showLanguageBottomSheet(context) {
    showModalBottomSheet(context: context, builder: (context) => Container());
  }
}
