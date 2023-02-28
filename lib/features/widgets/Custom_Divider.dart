// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class Custom_Divider extends StatelessWidget {
  const Custom_Divider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(30),
      child: Divider(
        thickness: 2,
        color: Colors.indigoAccent,
      ),
    );
  }
}
