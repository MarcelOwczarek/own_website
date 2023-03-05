// ignore_for_file: file_names, camel_case_type, camel_case_types

import 'package:flutter/material.dart';
import 'package:own_website/features/Home_Page/texts/text_desktop.dart';
import 'package:own_website/features/Home_Page/texts/text_mobile.dart';
import 'package:own_website/features/Home_Page/widgets/Custom_Image.dart';
import 'package:sizer/sizer.dart';

class my_description extends StatelessWidget {
  my_description({
    super.key,
  });

  final isMobile = SizerUtil.deviceType == DeviceType.mobile;

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
        height: isMobile ? 560 : 620,
        width: isMobile ? 350 : 950,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Custom_Image(),
                const SizedBox(height: 20),
                isMobile
                    ? text_mobile[5]
                    : text_desktop[5], // <- Text('Hello')..
                const SizedBox(height: 5),
                isMobile
                    ? text_mobile[6]
                    : text_desktop[6], // <- Text('Description')..
                const SizedBox(height: 5),
                isMobile
                    ? text_mobile[7]
                    : text_desktop[7], // <- Text('Signature')..
              ],
            ),
          ),
        ),
      ),
    );
  }
}
