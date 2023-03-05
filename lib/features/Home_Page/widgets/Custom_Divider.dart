// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Custom_Divider extends StatelessWidget {
  Custom_Divider({
    super.key,
  });

  final isMobile = SizerUtil.deviceType == DeviceType.mobile;

  @override
  Widget build(BuildContext context) {
    return isMobile
        ? const Padding(
            padding: EdgeInsets.all(30),
            child: Divider(
              thickness: 2,
              color: Colors.indigoAccent,
            ),
          )
        : const Padding(
            padding: EdgeInsets.all(30),
            child: Divider(
              thickness: 2,
              color: Colors.indigoAccent,
            ),
          );
  }
}
