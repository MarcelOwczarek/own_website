// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
                  item: NavigationItem.homepage,
                  icon: Icons.home_outlined,
                  text: 'Home Page',
                ),
                menu_item(
                  context,
                  item: NavigationItem.projects,
                  icon: Icons.work_outline_outlined,
                  text: 'Projects',
                ),
                menu_item(
                  context,
                  item: NavigationItem.contact,
                  icon: Icons.contact_page_outlined,
                  text: 'Contact',
                ),
              ],
            ),
          ],
        ),
      );
//////////////////////////////////////////////////////////////////////////////
// Category widget for Navigation Drawer
  Widget menu_item(
    BuildContext context, {
    required NavigationItem item,
    required String text,
    required IconData icon,
  }) {
    const color = Colors.white;
    final style = GoogleFonts.raleway(color: Colors.white);

    final provider = Provider.of<NavigationProvider>(context);
    final currentItem = provider.navigationItem;
    final isSelected = item == currentItem;

    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          selected: isSelected,
          selectedTileColor: Colors.indigo,
          leading: Icon(icon, color: color),
          title: Text(text, style: style),
          onTap: () => selectItem(context, item),
        ),
      ),
    );
  }
}

enum NavigationItem {
  homepage,
  projects,
  contact,
}

class NavigationProvider extends ChangeNotifier {
  NavigationItem _navigationItem = NavigationItem.homepage;

  NavigationItem get navigationItem => _navigationItem;

  void setNavigationItem(NavigationItem navigationItem) {
    _navigationItem = navigationItem;

    notifyListeners();
  }
}

void selectItem(BuildContext context, NavigationItem item) {
  final provider = Provider.of<NavigationProvider>(context, listen: false);
  provider.setNavigationItem(item);
}
