import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:resume/widget/programming_launguage_tile.dart';

class ProgrammingLanguagesScreen extends StatelessWidget {
  const ProgrammingLanguagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const AutoSizeText(
          "Programming language",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ProgrammingLanguageTile(
                  imageSrc: "/images/dart.png",
                  language: "Dart",
                  subtitle: "Love to create beatiful Flutter apps using dart",
                ),
                ProgrammingLanguageTile(
                  imageSrc: "/images/golang.png",
                  language: "Go",
                  subtitle: "Created api for apps in Go",
                ),
                ProgrammingLanguageTile(
                  imageSrc: "/images/python.png",
                  language: "Python",
                  subtitle: "Used sometimes for apps and api prototype",
                ),
                ProgrammingLanguageTile(
                  imageSrc: "/images/java.png",
                  language: "Java",
                  subtitle: "Created Flutter native method channel on Android platform using Java",
                ),
                ProgrammingLanguageTile(
                  imageSrc: "/images/c++.png",
                  language: "C++",
                  subtitle: "Created Flutter native method channel on windows platform using c++",
                ),
                ProgrammingLanguageTile(
                  imageSrc: "/images/js.png",
                  language: "JavaScript",
                  subtitle: "Familiar with syntax",
                ),
                ProgrammingLanguageTile(
                  imageSrc: "/images/ts.png",
                  language: "TypeScript",
                  subtitle: "I prefer Typescript over javascript",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
