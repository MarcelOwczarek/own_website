// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class Custom_Image extends StatelessWidget {
  const Custom_Image({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'images/picture2.jpg',
        width: 180,
        height: 180,
        fit: BoxFit.fill,
      ),
    );
  }
}
