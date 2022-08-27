import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:resume/widget/skill_tile.dart';

class OtherSkillScreen extends StatelessWidget {
  const OtherSkillScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: AutoSizeText("Other Skills"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                AutoSizeText(
                  "Database",
                  style: TextStyle(fontSize: 35),
                ),
                SkillTile(
                  imageSrc: "/images/sqlite.png",
                  skill: "Sqlite 3",
                  subtitle: "Mostly used sqlite3 for locally storing client side data",
                ),
                SkillTile(
                  imageSrc: "/images/mongo.png",
                  skill: "MongoDB",
                  subtitle: "",
                ),
                SkillTile(
                  imageSrc: "/images/postgre.png",
                  skill: "Postgresql",
                  subtitle: "",
                ),
                SkillTile(
                  imageSrc: "/images/firestore.png",
                  skill: "Firebase Firestore",
                  subtitle: "",
                ),
                SizedBox(
                  height: 25,
                ),
                AutoSizeText(
                  "Framework",
                  style: TextStyle(fontSize: 35),
                ),
                SkillTile(
                  imageSrc: "/images/flutter.jpg",
                  skill: "Flutter",
                  subtitle:
                      "Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.",
                ),
                SkillTile(
                  imageSrc: "/images/echo.png",
                  skill: "Echo",
                  subtitle: "High performance, extensible, minimalist Go web framework",
                ),
                SizedBox(
                  height: 25,
                ),
                AutoSizeText(
                  "Other",
                  style: TextStyle(fontSize: 35),
                ),
                SkillTile(
                  imageSrc: "/images/vscode.png",
                  skill: "Visual Studio Code",
                  subtitle: "Code Editor",
                ),
                SkillTile(
                  imageSrc: "/images/git.png",
                  skill: "Git",
                  subtitle: "Version Control System",
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
