// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:own_website/features/Home_Page/texts/text_desktop.dart';
import 'package:own_website/features/Home_Page/texts/text_mobile.dart';

class aboutme_arrow extends StatelessWidget {
  const aboutme_arrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          // DESKTOP //
          return aboutmearrow_widget(
            width: 80,
            height: 80,
            text_3: text_desktop[3],
          );
        } else {
          // MOBILE //
          return aboutmearrow_widget(
            width: 50,
            height: 50,
            text_3: text_mobile[3],
          );
        }
      },
    );
  }
}

class aboutmearrow_widget extends StatelessWidget {
  const aboutmearrow_widget({
    super.key,
    required this.width,
    required this.height,
    required this.text_3,
  });

  final double width;
  final double height;
  final Widget text_3;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      text_3, // <- Text ('about me')..
      Lottie.network(
        'https://assets4.lottiefiles.com/packages/lf20_dxwu3xu0.json',
        width: width,
        height: height,
      ),
    ]);
  }
}
