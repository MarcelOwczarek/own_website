// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:own_website/features/Home_Page/texts/text_mobile.dart';

class seemore_arrow extends StatelessWidget {
  const seemore_arrow({
    super.key,
  });

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
                width: 50,
                height: 50,
              ),
              text_mobile[4], // <- Text ('see more')..
            ],
          ),
        ),
      ],
    );
  }
}
