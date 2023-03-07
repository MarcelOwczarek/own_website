// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class Custom_CircleAvatar extends StatelessWidget {
  const Custom_CircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 600) {
        // DESKTOP //
        return const circleavatar_widget(
          radius: 265,
        );
      } else {
        // MOBILE //
        return const circleavatar_widget(
          radius: 175,
        );
      }
    });
  }
}

class circleavatar_widget extends StatelessWidget {
  const circleavatar_widget({
    super.key,
    required this.radius,
  });

  final double radius;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(side: BorderSide.none),
      elevation: 25,
      child: CircleAvatar(
        backgroundImage: const AssetImage('images/picture.jpg'),
        radius: radius,
      ),
    );
  }
}
