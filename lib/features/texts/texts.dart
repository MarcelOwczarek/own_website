import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

final text = <Widget>[
  Text(
    'Marcel Owczarek',
    style: GoogleFonts.raleway(),
  ),
  Text(
    "I'm Marcel",
    style: GoogleFonts.raleway(fontSize: 25, color: Colors.white),
  ),
  Text(
    'Passionate Mobile Developer',
    style: GoogleFonts.raleway(fontSize: 25, color: Colors.white),
  ),
  GradientText(
    'about me',
    style: GoogleFonts.raleway(fontSize: 17),
    gradientType: GradientType.linear,
    colors: const [
      Colors.cyan,
      Colors.blue,
    ],
  ),
  GradientText(
    'see more',
    style: GoogleFonts.raleway(fontSize: 17),
    gradientType: GradientType.linear,
    colors: const [
      Colors.cyan,
      Colors.blue,
    ],
  ),
];
