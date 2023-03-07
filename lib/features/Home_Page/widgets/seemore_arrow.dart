// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:own_website/features/Home_Page/texts/text_desktop.dart';

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
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Lottie.network(
                      'https://assets2.lottiefiles.com/packages/lf20_o0m8c13d.json',
                      width: 80,
                      height: 80,
                    ),
                    text_desktop[4], // <- Text ('about me')..
                  ],
                ),
              ),
            ],
          );
        } else {
          // MOBILE //
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage('images/arrow_leftcorner.png'),
                      width: 40,
                      height: 40,
                    ),
                    Text(
                      'see more',
                      style:
                          GoogleFonts.raleway(fontSize: 17, color: Colors.cyan),
                    ),
                  ],
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
