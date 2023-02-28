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
  Align(
    alignment: Alignment.topLeft,
    child: Text(
      'Hello',
      style: GoogleFonts.poppins(color: Colors.white),
    ),
  ),
  Padding(
    padding: const EdgeInsets.all(1),
    child: Text(
      "I'm Marcel, I'm 22 years old and I'm glad you visited me. I am not afraid of new challenges and technologies, I appreciate change and development. I bravely take risks to achieve my goals. I can adapt to any situation to deal with problems. I am friendly and sociable, confident in myself and my beliefs. My main interests are new technologies, programming, gym, traveling and cinema. I started my adventure with the Flutter framework in June 2022.",
      style: GoogleFonts.poppins(color: Colors.white),
    ),
  ),
  Align(
    alignment: Alignment.bottomRight,
    child: Text(
      'Best Regards Marcel',
      style: GoogleFonts.poppins(color: Colors.white),
    ),
  ),
  Text(
    'Made with 💙 by Marcel Owczarek using Flutter',
    style: GoogleFonts.raleway(
      fontSize: 11,
      color: Colors.white,
    ),
  ),
];
