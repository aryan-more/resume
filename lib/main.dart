import 'package:flutter/material.dart';
import 'package:resume/screen/resume.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aryan More Resume',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: 35,
            color: Colors.black,
          ),
        ),
      ),
      home: ResmumeScreen(),
    );
  }
}
