import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

final text = <Widget>[
  /////////////////////////////////////////////////////////////////////////
  // Texts under the photo in Home_Page:
  Text(
    'Marcel Owczarek', // - 0
    style: GoogleFonts.raleway(),
  ),
  Text(
    "I'm Marcel", // - 1
    style: GoogleFonts.raleway(fontSize: 25, color: Colors.white),
  ),
  Text(
    'Passionate Mobile Developer', // - 2
    style: GoogleFonts.raleway(fontSize: 25, color: Colors.white),
  ),
  /////////////////////////////////////////////////////////////////////////
  // Texts next to lottie animations in Home_Page:
  GradientText(
    'about me', // - 3
    style: GoogleFonts.raleway(fontSize: 17),
    gradientType: GradientType.linear,
    colors: const [
      Colors.cyan,
      Colors.blue,
    ],
  ),
  GradientText(
    'see more', // - 4
    style: GoogleFonts.raleway(fontSize: 17),
    gradientType: GradientType.linear,
    colors: const [
      Colors.cyan,
      Colors.blue,
    ],
  ),
  /////////////////////////////////////////////////////////////////////////
  // Texts in my_description container in bottom of Home_Page:
  Align(
    alignment: Alignment.topLeft,
    child: Text(
      'Hello', // - 5
      style: GoogleFonts.poppins(color: Colors.white),
    ),
  ),
  Padding(
    padding: const EdgeInsets.all(1),
    child: Text(
      // - 6
      "I'm Marcel, I'm 22 years old and I'm glad you visited me. I am not afraid of new challenges and technologies, I appreciate change and development. I bravely take risks to achieve my goals. I can adapt to any situation to deal with problems. I am friendly and sociable, confident in myself and my beliefs. My main interests are new technologies, programming, traveling and cinema. I started my adventure with the Flutter framework in June 2022.",
      style: GoogleFonts.poppins(color: Colors.white),
      textAlign: TextAlign.justify,
    ),
  ),
  Align(
    alignment: Alignment.bottomRight,
    child: Text(
      'Best Regards Marcel', // - 7
      style: GoogleFonts.poppins(color: Colors.white),
    ),
  ),
  /////////////////////////////////////////////////////////////////////////
  // Signature text in bottom of whole Home_Page:
  Text(
    'Made with 💙 by Marcel Owczarek using Flutter', // - 8
    style: GoogleFonts.raleway(
      fontSize: 11,
      color: Colors.white,
    ),
  ),
  /////////////////////////////////////////////////////////////////////////
];
