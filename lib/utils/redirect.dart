import 'package:url_launcher/url_launcher.dart';

void redirect(String url) => launchUrl(Uri.parse(url));
