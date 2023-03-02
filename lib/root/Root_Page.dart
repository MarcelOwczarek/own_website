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
      body: Container(
        height: 700,
        width: 400,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF2B5876),
              Color(0xff4E4376),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: const MainPage(),
      ),
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
        return const Contact_Page();
    }
  }
}

class Contact_Page extends StatelessWidget {
  const Contact_Page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Contact_button(context,
            icon: Icons.mail_outline, text: 'flutter@marcelowczarek.dev'),
        const divider(),
        Contact_button(context, icon: Icons.code, text: 'My profile on Github'),
        const divider(),
        Contact_button(context,
            icon: Icons.smartphone_outlined, text: '+48 794 116 095'),
      ],
    );
  }
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

Widget Contact_button(
  BuildContext context, {
  required IconData icon,
  required String text,
}) {
  return SizedBox(
    height: 60,
    width: 250,
    child: ElevatedButton(
      onPressed: () {},
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
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 25),
            Project_Container(
              context,
              project_name: '~ Republic Customs Army mobile app',
              project_description:
                  'The mobile application was created for a friend who has a company in the 3D design and graphic industry about Star Wars. The app itself was supossed to look like a store. At the moment there is no content permanently in the code, everything is based on Firebase. Without interfering with the code, we can add e.g. news to the dedicated screen in real time, as well as new products. The current status of the mobile application can be described as unfinished according to initial plans. There is no option to add products to favorites or the basket and payment. All source code is on Github, check contact bookmark. However the app itself is currently available in the form of a webapp. Soon it will also appear on the Google play store for Android.',
              button_icon: Icons.check,
              button_text: 'Check',
              button_color: Colors.green,
            ),
            const SizedBox(height: 25),
            Project_Container(
              context,
              project_name: '~ Invoice app ( currently under development )',
              project_description:
                  'The idea is to create simple minimalistic app where we can generate invoices for our company. Just by providing every necessary info like information of seller/buyer/products, then we could be able to generate invoice easily and fast . Beside that for a person that would create account in the app there will be option to store all generated invoices, so user can get them from every devices.',
              button_icon: Icons.construction,
              button_text: 'Not available yet',
              button_color: Colors.white12,
            ),
            const SizedBox(height: 25),
          ],
        )
      ],
    );
  }
}

Widget Project_Container(
  BuildContext context, {
  required String project_name,
  required String project_description,
  required IconData button_icon,
  required String button_text,
  required Color button_color,
}) {
  final first_style = GoogleFonts.raleway(color: Colors.white);
  final second_style = GoogleFonts.raleway(color: Colors.white);
  final third_style = GoogleFonts.raleway(color: Colors.white);

  return FittedBox(
    fit: BoxFit.fitHeight,
    child: Container(
      width: 350,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Colors.blueGrey,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(project_name, style: first_style),
            const SizedBox(height: 25),
            Text(
              project_description,
              style: second_style,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 45,
              width: 170,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: button_color,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(button_icon, size: 20),
                    Text(button_text, style: third_style),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
