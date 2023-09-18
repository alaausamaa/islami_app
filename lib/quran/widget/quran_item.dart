import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {
  final String suraNumber;

  const QuranItem({super.key, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
            child: Text(
          suraNumber,
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
                textAlign: TextAlign.center, style: theme.textTheme.bodyMedium))
      ],
    );
  }
}
