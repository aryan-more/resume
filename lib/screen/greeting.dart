import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class GreetingScreen extends StatelessWidget {
  const GreetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            AutoSizeText(
              "Hey there 🖐️,\nNice to see you",
              style: TextStyle(
                fontSize: 45,
              ),
            ),
            AutoSizeText(
              "I'm Aryan More",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            AutoSizeText(
              "Scroll down to explore more",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Icon(
              Icons.arrow_downward_outlined,
              size: 25,
            ),
          ],
        ),
      ),
    );
  }
}
