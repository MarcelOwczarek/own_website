// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:own_website/features/texts/texts.dart';

class about_me extends StatelessWidget {
  const about_me({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        text[3],
        Lottie.network(
          'https://assets4.lottiefiles.com/packages/lf20_dxwu3xu0.json',
          width: 50,
          height: 50,
        )
      ],
    );
  }
}
