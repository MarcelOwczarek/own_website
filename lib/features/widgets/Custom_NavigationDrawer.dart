// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custom_NavigationDrawer extends StatelessWidget {
  const Custom_NavigationDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: Colors.grey[900],
        child: ListView(
          children: [
            Column(
              children: <Widget>[
                const SizedBox(height: 10),
                menu_item(
                  context,
                  icon: Icons.home_outlined,
                  text: 'Home Page',
                ),
                menu_item(
                  context,
                  icon: Icons.work_outline_outlined,
                  text: 'Projects',
                ),
                menu_item(
                  context,
                  icon: Icons.contact_page_outlined,
                  text: 'Contact',
                ),
              ],
            ),
          ],
        ),
      );

  Widget menu_item(
    BuildContext context, {
    required String text,
    required IconData icon,
  }) {
    const color = Colors.white;
    final style = GoogleFonts.raleway(
      color: Colors.white,
    );

    return Material(
      color: Colors.transparent,
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(text, style: style),
        onTap: () {},
      ),
    );
  }
}
