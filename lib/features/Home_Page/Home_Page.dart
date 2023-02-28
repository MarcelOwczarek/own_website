// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:own_website/features/texts/texts.dart';
import 'package:own_website/features/widgets/Custom_CircleAvatar.dart';
import 'package:own_website/features/widgets/Custom_Divider.dart';
import 'package:own_website/features/widgets/Custom_SizedBox.dart';
import 'package:own_website/features/widgets/about_me.dart';
import 'package:own_website/features/widgets/my_description.dart';
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
                const SizedBox(height: 150),
                const Custom_Divider(),
                const my_description(),
                const SizedBox(height: 50),
                text[8],
                const Custom_SizedBox(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
