import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:resume/utils/redirect.dart';

class ProjectTile extends StatelessWidget {
  const ProjectTile({
    Key? key,
    required this.url,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String url;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        title: AutoSizeText(
          title,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        subtitle: AutoSizeText(
          description,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white60),
        ),
        onTap: () => redirect(url),
      ),
    );
  }
}
