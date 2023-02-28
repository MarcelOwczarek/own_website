// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:own_website/features/texts/texts.dart';
import 'package:own_website/features/widgets/Custom_CircleAvatar.dart';
import 'package:own_website/features/widgets/Custom_SizedBox.dart';
import 'package:own_website/features/widgets/about_me.dart';
import 'package:own_website/features/widgets/see_more.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (text[0]),
        backgroundColor: Colors.grey[900],
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(Icons.menu),
        ),
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
        child: ListView(
          children: [
            Column(
              children: [
                const see_more(),
                const SizedBox(width: 130),
                const Custom_SizedBox(),
                const Custom_CircleAvatar(),
                const SizedBox(height: 35),
                text[1],
                const Custom_SizedBox(),
                text[2],
                const Custom_SizedBox(),
                const about_me(),
                //const Custom_SizedBox(),
                const SizedBox(
                  height: 150,
                ),
                const Padding(
                  padding: EdgeInsets.all(30),
                  child: Divider(
                    thickness: 2,
                    color: Colors.indigoAccent,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  height: 400,
                  width: 340,
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(''),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Text(
                  'Made with 💙 by Marcel Owczarek using Flutter',
                  style: GoogleFonts.raleway(
                    fontSize: 11,
                    color: Colors.white,
                  ),
                ),
                const Custom_SizedBox(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
