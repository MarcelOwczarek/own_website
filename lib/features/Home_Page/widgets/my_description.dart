// ignore_for_file: file_names, camel_case_type, camel_case_types

import 'package:flutter/material.dart';
import 'package:own_website/features/Home_Page/texts/text_desktop.dart';
import 'package:own_website/features/Home_Page/texts/text_mobile.dart';
import 'package:own_website/features/Home_Page/widgets/Custom_Image.dart';

class my_description extends StatelessWidget {
  const my_description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          // DESKTOP //
          return mydescription_widget(
            width: 950,
            height: 515,
            text_5: text_desktop[5],
            text_6: text_desktop[6],
            text_7: text_desktop[7],
          );
        } else {
          // MOBILE //
          return mydescription_widget(
            width: 350,
            height: 560,
            text_5: text_mobile[5],
            text_6: text_mobile[6],
            text_7: text_mobile[7],
          );
        }
      },
    );
  }
}

class mydescription_widget extends StatelessWidget {
  const mydescription_widget({
    super.key,
    required this.width,
    required this.height,
    required this.text_5,
    required this.text_6,
    required this.text_7,
  });

  final double width;
  final double height;
  final Widget text_5;
  final Widget text_6;
  final Widget text_7;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitHeight,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        height: height,
        width: width,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Custom_Image(),
                const SizedBox(height: 20),
                text_5, // <- Text('Hello')..
                const SizedBox(height: 5),
                text_6, // <- Text('Description')..
                const SizedBox(height: 5),
                text_7, // <- Text('Signature')..
              ],
            ),
          ),
        ),
      ),
    );
  }
}
