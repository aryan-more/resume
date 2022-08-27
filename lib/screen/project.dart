import 'package:flutter/material.dart';
import 'package:resume/widget/project_tile.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text(
          "Projects",
          style: TextStyle(
            color: Colors.white,
          ),
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
                ProjectTile(
                  url: "https://github.com/aryan-more/notepad",
                  title: "Notepad",
                  description: "A simple notepad app that uses firebase firestore and sqflite3(Only if user skips sign in) for storing notes.",
                ),
                ProjectTile(
                  url: "https://github.com/aryan-more/Anom",
                  title: "Anom",
                  description:
                      "Anom is a privacy centric app that blocks sites that tries to track user on most apps and websites. Also comes with inbuilt password manager to create and manage complex password for different App & Website password. Available on Android & Windows 8/10/11",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
