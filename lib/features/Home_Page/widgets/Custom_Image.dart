// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class Custom_Image extends StatelessWidget {
  const Custom_Image({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          // DESKTOP //
          return const customimage_widget(
            width: 250,
            height: 250,
          );
        } else {
          // MOBILE
          return const customimage_widget(
            width: 180,
            height: 180,
          );
        }
      },
    );
  }
}

class customimage_widget extends StatelessWidget {
  const customimage_widget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

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
          width: width,
          height: height,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
