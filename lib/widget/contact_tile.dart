import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:resume/utils/redirect.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactTile extends StatelessWidget {
  const ContactTile({
    Key? key,
    this.imageSrc,
    required this.title,
    required this.subtitle,
    required this.url,
    this.icon,
    this.mail = false,
  })  : assert((imageSrc != null && icon == null) || (imageSrc == null && icon != null)),
        super(key: key);
  final String? imageSrc;
  final String title;
  final String subtitle;
  final String url;
  final IconData? icon;
  final bool mail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        leading: imageSrc == null
            ? Icon(
                icon!,
                size: 50,
                color: Colors.black,
              )
            : Image.network(
                imageSrc!,
                height: 50,
                width: 50,
                fit: BoxFit.scaleDown,
              ),
        title: AutoSizeText(
          title,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: AutoSizeText(
          subtitle,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () => redirect(mail ? Mailto(to: [url]).toString() : url),
      ),
    );
  }
}
