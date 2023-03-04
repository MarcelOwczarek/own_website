// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact_Page extends StatelessWidget {
  Contact_Page({
    super.key,
  });

  final Uri mail = Uri.parse(
      'mailto:flutter@marceelowczarek.dev?subject=Query&body=Hi%20Hello');
  final Uri github = Uri.parse('https://github.com/MarcelOwczarek');
  final Uri tel = Uri.parse('tel:+48-794-116-095');

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Contact_button(context,
            icon: Icons.mail_outline,
            text: 'flutter@marcelowczarek.dev',
            launch_url: mail),
        const divider(),
        Contact_button(
          context,
          icon: Icons.code,
          text: 'My profile on Github',
          launch_url: github,
        ),
        const divider(),
        Contact_button(context,
            icon: Icons.smartphone_outlined,
            text: '+48 794 116 095',
            launch_url: tel),
      ],
    );
  }
}

Widget Contact_button(
  BuildContext context, {
  required IconData icon,
  required String text,
  required dynamic launch_url,
}) {
  return SizedBox(
    height: 60,
    width: 250,
    child: ElevatedButton(
      onPressed: () {
        launchUrl(launch_url);
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigo,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 20),
          Text(
            text,
            style: GoogleFonts.lato(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    ),
  );
}

class divider extends StatelessWidget {
  const divider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Divider(thickness: 2, color: Colors.indigoAccent),
    );
  }
}
