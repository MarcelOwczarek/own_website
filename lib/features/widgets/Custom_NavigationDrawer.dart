// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

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
              children: const <Widget>[
                SizedBox(height: 10),
              ],
            ),
          ],
        ),
      );
}
