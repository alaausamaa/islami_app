import 'package:flutter/material.dart';
import 'package:islami_app/quran/widget/quran_details.dart';
import 'package:islami_app/quran/widget/quran_item.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/quransora.png"),
        Divider(
          thickness: 2.2,
          color: theme.primaryColor,
          indent: 10,
          endIndent: 10,
          height: 5,
        ),
        Row(
          children: [
            Expanded(
                child: Text(
              "رقم السورة",
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            )),
            Container(
              width: 1.2,
              height: 45,
              color: theme.primaryColor,
            ),
            Expanded(
                child: Text("اسم السوره",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium))
          ],
        ),
        Divider(
          thickness: 2.2,
          color: theme.primaryColor,
          indent: 10,
          endIndent: 10,
          height: 5,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, QuranDetails.routeName);
              },
              child: QuranItem(
                suraNumber: "${index + 1}",
              ),
            ),
            itemCount: 114,
          ),
        )
      ],
    );
  }
}
