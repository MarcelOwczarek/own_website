// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:own_website/features/Home_Page/texts/text_desktop.dart';
import 'package:own_website/features/Home_Page/texts/text_mobile.dart';
import 'package:sizer/sizer.dart';

class aboutme_arrow extends StatelessWidget {
  aboutme_arrow({
    super.key,
  });

  final isMobile = SizerUtil.deviceType == DeviceType.mobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isMobile ? text_mobile[3] : text_desktop[3], // <- Text ('about me')..
        isMobile
            ? Lottie.network(
                'https://assets4.lottiefiles.com/packages/lf20_dxwu3xu0.json',
                width: 50,
                height: 50,
              )
            : Lottie.network(
                'https://assets4.lottiefiles.com/packages/lf20_dxwu3xu0.json',
                width: 100,
                height: 100,
              )
      ],
    );
  }
}
