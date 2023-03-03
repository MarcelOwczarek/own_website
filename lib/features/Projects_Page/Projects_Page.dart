// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Projects_Page extends StatelessWidget {
  const Projects_Page({
    super.key,
  });

  final project_name = '~ Republic Customs Army mobile app';
  final project_description =
      'The mobile application was created for a friend who has a company in the 3D design and graphic industry about Star Wars. The app itself was supossed to look like a store. At the moment there is no content permanently in the code, everything is based on Firebase. Without interfering with the code, we can add e.g. news to the dedicated screen in real time, as well as new products. The current status of the mobile application can be described as unfinished according to initial plans. There is no option to add products to favorites or the basket and payment. All source code is on Github, check contact bookmark. However the app itself is currently available in the form of a webapp. Soon it will also appear on the Google play store for Android.';
  final button_text = 'Check';
  //
  final project_name_2 = '~ Invoice app ( currently under development )';
  final project_description_2 =
      'The idea is to create simple minimalistic app where we can generate invoices for our company. Just by providing every necessary info like information of seller/buyer/products, then we could be able to generate invoice easily and fast . Beside that for a person that would create account in the app there will be option to store all generated invoices, so user can get them from every devices.';
  final button_text_2 = 'Not available yet';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const sizedbox(),
            Text(
              'My Projects:',
              style: GoogleFonts.raleway(fontSize: 20, color: Colors.white),
            ),
            const sizedbox(),
            Project_Container(
              context,
              project_name: project_name,
              project_description: project_description,
              button_icon: Icons.check,
              button_text: button_text,
              button_color: Colors.green,
            ),
            const sizedbox(),
            Project_Container(
              context,
              project_name: project_name_2,
              project_description: project_description_2,
              button_icon: Icons.construction,
              button_text: button_text_2,
              button_color: Colors.white12,
            ),
            const sizedbox(),
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
  final style = GoogleFonts.raleway(color: Colors.white);

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
            Text(project_name, style: style),
            const SizedBox(height: 25),
            Text(
              project_description,
              style: style,
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
                    Text(button_text, style: style),
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

class sizedbox extends StatelessWidget {
  const sizedbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 25);
  }
}
