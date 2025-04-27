import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class launchdd extends StatelessWidget {
  const launchdd({super.key, required this.name, required this.icon});
  final String name;
  final int icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        Uri uri = Uri.parse(name);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
          //  throw Exception('Could not launch $uri');
        } else {
          print('error');
        }
      },
      icon:
          icon == 1
              ? FaIcon(FontAwesomeIcons.github)
              : icon == 2
              ? FaIcon(FontAwesomeIcons.linkedin)
              : icon == 3
              ? FaIcon(FontAwesomeIcons.facebook)
              : FaIcon(FontAwesomeIcons.instagram),
    );
  }
}
