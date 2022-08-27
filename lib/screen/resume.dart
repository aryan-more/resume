import 'package:flutter/material.dart';
import 'package:resume/screen/bye.dart';
import 'package:resume/screen/contact.dart';
import 'package:resume/screen/education.dart';
import 'package:resume/screen/greeting.dart';
import 'package:resume/screen/other_skills.dart';
import 'package:resume/screen/programming_language.dart';
import 'package:resume/screen/project.dart';

class ShakeCurve extends Curve {
  @override
  double transform(double t) => t;
}

class ResmumeScreen extends StatelessWidget {
  ResmumeScreen({Key? key}) : super(key: key);
  final PageController controller = PageController(initialPage: 5);

  void changePage(int page) {
    controller.animateToPage(
      page,
      duration: Duration(seconds: 1),
      curve: ShakeCurve(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // changePage(5);
    return Scaffold(
      body: PageView(
        controller: controller,
        scrollDirection: Axis.vertical,
        children: const [
          GreetingScreen(),
          ContactScreen(),
          EducationScreen(),
          ProgrammingLanguagesScreen(),
          OtherSkillScreen(),
          ProjectScreen(),
          // EndScreen(),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (() => changePage(5)),
      // ),
    );
  }
}
