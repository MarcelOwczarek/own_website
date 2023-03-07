// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:own_website/features/Home_Page/texts/text_mobile.dart';

class aboutme_arrow extends StatelessWidget {
  const aboutme_arrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      text_mobile[3], // <- Text ('about me')..
      Lottie.network(
        'https://assets4.lottiefiles.com/packages/lf20_dxwu3xu0.json',
        width: 50,
        height: 50,
      ),
    ]);
  }
}
