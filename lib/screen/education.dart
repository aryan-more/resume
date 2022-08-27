import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:resume/widget/course_tile.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AutoSizeText(
          "Education",
        ),
      ),
      backgroundColor: Colors.amber,
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 500,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                CourseTile(
                  course: "B.Sc Information Technology",
                  percentage: "9.02 CGPA",
                ),
                CourseTile(
                  course: "HSC",
                  percentage: "73.84%",
                ),
                CourseTile(
                  course: "SSC",
                  percentage: "77.40%",
                ),
                SizedBox(
                  height: 100,
                ),
                AutoSizeText("College & School name are not displayed because of privacy concerns,Please refer Resume")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
