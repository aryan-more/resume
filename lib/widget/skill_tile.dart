import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SkillTile extends StatelessWidget {
  const SkillTile({
    Key? key,
    required this.imageSrc,
    required this.skill,
    required this.subtitle,
  }) : super(key: key);
  final String imageSrc;
  final String skill;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        leading: Image.network(
          imageSrc,
          height: 50,
          width: 50,
          fit: BoxFit.scaleDown,
        ),
        title: AutoSizeText(
          skill,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        subtitle: AutoSizeText(
          subtitle,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
