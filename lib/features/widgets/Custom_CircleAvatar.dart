// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Custom_CircleAvatar extends StatelessWidget {
  const Custom_CircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Material(
      shape: CircleBorder(side: BorderSide.none),
      elevation: 25,
      child: CircleAvatar(
        backgroundImage: AssetImage('images/picture.jpg'),
        radius: 180,
      ),
    );
  }
}
