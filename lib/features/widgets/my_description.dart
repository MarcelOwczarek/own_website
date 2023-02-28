// ignore_for_file: file_names, camel_case_type, camel_case_types

import 'package:flutter/material.dart';
import 'package:own_website/features/texts/texts.dart';
import 'package:own_website/features/widgets/Custom_Image.dart';

class my_description extends StatelessWidget {
  const my_description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      height: 560,
      width: 350,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Custom_Image(),
              const SizedBox(height: 20),
              text[5], // <- Text('Hello')..
              const SizedBox(height: 5),
              text[6], // <- Text('Description')..
              const SizedBox(height: 5),
              text[7], // <- Text('Signature')..
            ],
          ),
        ),
      ),
    );
  }
}
