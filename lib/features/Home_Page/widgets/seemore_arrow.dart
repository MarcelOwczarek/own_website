// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:own_website/features/Home_Page/texts/text_desktop.dart';
import 'package:own_website/features/Home_Page/texts/text_mobile.dart';
import 'package:sizer/sizer.dart';

class seemore_arrow extends StatelessWidget {
  seemore_arrow({
    super.key,
  });

  final isMobile = SizerUtil.deviceType == DeviceType.mobile;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SizerUtil.deviceType == DeviceType.mobile
                  ? Lottie.network(
                      'https://assets2.lottiefiles.com/packages/lf20_o0m8c13d.json',
                      width: 50,
                      height: 50,
                    )
                  : Lottie.network(
                      'https://assets2.lottiefiles.com/packages/lf20_o0m8c13d.json',
                      width: 100,
                      height: 100,
                    ),
              isMobile
                  ? text_mobile[4]
                  : text_desktop[4], // <- Text ('see more')..
            ],
          ),
        ),
      ],
    );
  }
}
