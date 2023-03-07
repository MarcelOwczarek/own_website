// ignore_for_file: file_names, camel_case_type, camel_case_types

import 'package:flutter/material.dart';
import 'package:own_website/features/Home_Page/texts/text_mobile.dart';
import 'package:own_website/features/Home_Page/widgets/Custom_Image.dart';

class my_description extends StatelessWidget {
  const my_description({
    super.key,
  });

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
        height: 560, // 920 desktop
        width: 350, // 950 desktop
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Custom_Image(),
                const SizedBox(height: 20),
                text_mobile[5], // <- Text('Hello')..
                const SizedBox(height: 5),
                text_mobile[6], // <- Text('Description')..
                const SizedBox(height: 5),
                text_mobile[7], // <- Text('Signature')..
              ],
            ),
          ),
        ),
      ),
    );
  }
}
