import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:resume/widget/contact_tile.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 224, 0),
      appBar: AppBar(
        title: const AutoSizeText(
          "Contact",
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
                ContactTile(
                  title: "LinkedIn",
                  subtitle: "Aryan More",
                  url: 'https://www.linkedin.com/in/aryan-more-ab8560247/',
                  imageSrc: "/images/linkedin.png",
                ),
                ContactTile(
                  title: "Github",
                  subtitle: "aryan-more",
                  url: 'https://github.com/aryan-more',
                  imageSrc: "/images/github.png",
                ),
                ContactTile(
                  title: "Mail",
                  subtitle: "morearyan0@proton.me",
                  url: "morearyan0@proton.me",
                  icon: Icons.mail,
                  mail: true,
                ),
                SizedBox(
                  height: 100,
                ),
                AutoSizeText(
                  "Phone number and Address are not displayed because of privacy concerns,Please refer CV",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
