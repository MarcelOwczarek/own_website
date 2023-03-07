// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:own_website/features/Home_Page/texts/text_desktop.dart';
import 'package:own_website/features/Home_Page/texts/text_mobile.dart';

class seemore_arrow extends StatelessWidget {
  const seemore_arrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          // DESKTOP //
          return seemorearrow_widget(
            width: 80,
            height: 80,
            text: text_desktop[4],
          );
        } else {
          // MOBILE //
          return seemorearrow_widget(
            width: 50,
            height: 50,
            text: text_mobile[4],
          );
        }
      },
    );
  }
}

class seemorearrow_widget extends StatelessWidget {
  const seemorearrow_widget({
    super.key,
    required this.width,
    required this.height,
    required this.text,
  });

  final double width;
  final double height;
  final Widget text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Lottie.network(
                'https://assets2.lottiefiles.com/packages/lf20_o0m8c13d.json',
                width: width,
                height: height,
              ),
              text, // <- Text ('see more')..
            ],
          ),
        ),
      ],
    );
  }
}
