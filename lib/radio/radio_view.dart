import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var them = Theme.of(context);
    return Container(
      color: Colors.transparent,
      height: double.infinity,
      width: double.infinity,
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 100),
            Image.asset("assets/images/radio_image.png"),
            SizedBox(height: 40),
            Text(
              "إذاعة القرآن الكريم",
              style: them.textTheme.bodyMedium,
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.skip_previous_rounded,
                  size: 50,
                  color: them.primaryColor,
                ),
                Icon(
                  Icons.pause,
                  size: 50,
                  color: them.primaryColor,
                ),
                Icon(
                  Icons.skip_next_rounded,
                  size: 50,
                  color: them.primaryColor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}