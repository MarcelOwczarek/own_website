// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, avoid_web_libraries_in_flutter, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:own_website/features/Home_Page/Home_Page.dart';
import 'package:own_website/features/texts/texts.dart';
import 'package:own_website/features/widgets/Custom_NavigationDrawer.dart';
import 'package:provider/provider.dart';

class Root_Page extends StatelessWidget {
  const Root_Page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Custom_NavigationDrawer(),
      appBar: AppBar(
        title: text[0], // <- my Name and surname
        backgroundColor: Colors.grey[900],
      ),
      body: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => selected_page();

  Widget selected_page() {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    switch (navigationItem) {
      case NavigationItem.homepage:
        return const Home_Page();
      case NavigationItem.projects:
        return const Projects_Page();
      case NavigationItem.contact:
        return const Scaffold();
    }
  }
}

class Projects_Page extends StatelessWidget {
  const Projects_Page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 25),
            Text(
              'My Projects:',
              style: GoogleFonts.raleway(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 25),
          ],
        )
      ],
    );
  }
}
