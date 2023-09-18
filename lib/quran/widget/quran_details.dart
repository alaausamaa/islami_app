import 'package:flutter/material.dart';

class QuranDetails extends StatelessWidget {
  static const String routeName = "Quran_Details ";

  const QuranDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/bg3.png",
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامي"),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 30),
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          width: mediaQuery.width,
          height: mediaQuery.height,
          decoration: BoxDecoration(
              color: Color(0xFFF8F8F8),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "sura name",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.play_circle,
                    size: 32,
                    color: Colors.black,
                  )
                ],
              ),
              Divider(
                color: theme.primaryColor,
                endIndent: 50,
                indent: 50,
                thickness: 1.2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
