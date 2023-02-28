// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:own_website/features/texts/texts.dart';

class see_more extends StatelessWidget {
  const see_more({
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
              text[4],
            ],
          ),
        ),
      ],
    );
  }
}
