import 'package:flutter/material.dart';

class HadethView extends StatelessWidget {
  const HadethView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/quransora.png"),
        Divider(
          thickness: 1.5,
          endIndent: 10,
          indent: 10,
          color: theme.primaryColor,
          height: 10,
        ),
        Text(
          "الاحاديث",
          style: theme.textTheme.bodyLarge,
        ),
        Divider(
          thickness: 1.5,
          endIndent: 10,
          indent: 10,
          color: theme.primaryColor,
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
              itemBuilder: (context, index) => Text("a;;"), itemCount: 18),
        )
      ],
    );
  }
}
