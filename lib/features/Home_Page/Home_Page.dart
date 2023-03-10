// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:own_website/features/Home_Page/texts/text_desktop.dart';
import 'package:own_website/features/Home_Page/texts/text_mobile.dart';
import 'package:own_website/features/Home_Page/widgets/Custom_CircleAvatar.dart';
import 'package:own_website/features/Home_Page/widgets/Custom_Divider.dart';
import 'package:own_website/features/Home_Page/widgets/Custom_SizedBox.dart';
import 'package:own_website/features/Home_Page/widgets/aboutme_arrow.dart';
import 'package:own_website/features/Home_Page/widgets/my_description.dart';
import 'package:own_website/features/Home_Page/widgets/seemore_arrow.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          // DESKTOP //
          return homepage_widget(
            text_1: text_desktop[1],
            text_2: text_desktop[2],
            text_8: text_desktop[8],
          );
        } else {
          // MOBILE //
          return homepage_widget(
            text_1: text_mobile[1],
            text_2: text_mobile[2],
            text_8: text_mobile[8],
          );
        }
      },
    );
  }
}

class homepage_widget extends StatelessWidget {
  const homepage_widget({
    super.key,
    required this.text_1,
    required this.text_2,
    required this.text_8,
  });

  final Widget text_1;
  final Widget text_2;
  final Widget text_8;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            // Arrow in left top corner of Home_Page:
            const seemore_arrow(),

            const Custom_SizedBox(),

            // Main photo:
            const Custom_CircleAvatar(),

            const SizedBox(height: 35),

            // Text under photo
            text_1,

            const Custom_SizedBox(),

            // Second text under photo
            text_2,

            const Custom_SizedBox(),

            // Arrow directed to bottom of the Home_Page
            const aboutme_arrow(),

            const SizedBox(height: 150),

            const Custom_Divider(),

            // Container with my description etc..
            const my_description(),

            const SizedBox(height: 50),

            // Signature on bottom of whole Home_Page

            text_8,

            const Custom_SizedBox(),
          ],
        ),
      ],
    );
  }
}
