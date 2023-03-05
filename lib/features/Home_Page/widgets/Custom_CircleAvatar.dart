// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Custom_CircleAvatar extends StatelessWidget {
  const Custom_CircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(side: BorderSide.none),
      elevation: 25,
      child: SizerUtil.deviceType == DeviceType.mobile
          ? const CircleAvatar(
              backgroundImage: AssetImage('images/picture.jpg'),
              radius: 180,
            )
          : const CircleAvatar(
              backgroundImage: AssetImage('images/picture.jpg'),
              radius: 250,
            ),
    );
  }
}
