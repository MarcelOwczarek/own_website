// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Custom_Image extends StatelessWidget {
  Custom_Image({
    super.key,
  });

  final isMobile = SizerUtil.deviceType == DeviceType.mobile;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 1,
            blurRadius: 10,
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'images/picture2.jpg',
          width: isMobile ? 180 : 300,
          height: isMobile ? 180 : 300,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
