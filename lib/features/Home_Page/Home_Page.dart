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
import 'package:sizer/sizer.dart';

class Home_Page extends StatelessWidget {
  Home_Page({
    super.key,
  });

  final isMobile = SizerUtil.deviceType == DeviceType.mobile;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            // Arrow in left top corner of Home_Page:
            seemore_arrow(),

            const Custom_SizedBox(),

            // Main photo:
            const Custom_CircleAvatar(),

            const SizedBox(height: 35),

            // Text under photo
            isMobile ? text_mobile[1] : text_desktop[1],

            const Custom_SizedBox(),

            // Second text under photo
            isMobile ? text_mobile[2] : text_desktop[2],

            const Custom_SizedBox(),

            // Arrow directed to bottom of the Home_Page
            aboutme_arrow(),

            const SizedBox(height: 150),

            Custom_Divider(),

            // Container with my description etc..
            my_description(),

            const SizedBox(height: 50),

            // Signature on bottom of whole Home_Page
            isMobile ? text_mobile[8] : text_desktop[8],

            const Custom_SizedBox(),
          ],
        ),
      ],
    );
  }
}
