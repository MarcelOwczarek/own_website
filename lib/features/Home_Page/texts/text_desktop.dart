// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

final text_desktop = <Widget>[
  ////
  // name surname in Appbar:
  const Appbar_name(),

  // Texts under main photo in HomePage:
  const welcome_text(),
  const second_welcome_text(),

  // Texts next to lottie animations in Home_Page:
  const about_me(),
  const see_more(),

  // Texts in my_description container in bottom of Home_Page:
  const my_description_1(),
  const my_description_2(),
  const my_description_3(),

  // Signature text in bottom of whole Home_Page:
  const Signature(),
  ////
];

//
//
//
//

class Signature extends StatelessWidget {
  const Signature({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Made with 💙 by Marcel Owczarek using Flutter',
      style: GoogleFonts.raleway(
        fontSize: 15,
        color: Colors.white,
      ),
    );
  }
}

class my_description_3 extends StatelessWidget {
  const my_description_3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Text(
        'Best Regards Marcel',
        style: GoogleFonts.poppins(color: Colors.white, fontSize: 17),
      ),
    );
  }
}

class my_description_2 extends StatelessWidget {
  const my_description_2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Text(
        "I'm Marcel, I'm 22 years old and I'm glad you visited me. I am not afraid of new challenges and technologies, I appreciate change and development. I bravely take risks to achieve my goals. I can adapt to any situation to deal with problems. I am friendly and sociable, confident in myself and my beliefs. My main interests are new technologies, programming, traveling and cinema. I started my adventure with the Flutter framework in June 2022.",
        style: GoogleFonts.poppins(color: Colors.white, fontSize: 17),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class my_description_1 extends StatelessWidget {
  const my_description_1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        'Hello',
        style: GoogleFonts.poppins(color: Colors.white, fontSize: 17),
      ),
    );
  }
}

class see_more extends StatelessWidget {
  const see_more({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GradientText(
      'see more',
      style: GoogleFonts.raleway(fontSize: 22),
      gradientType: GradientType.linear,
      colors: const [
        Colors.cyan,
        Colors.blue,
      ],
    );
  }
}

class about_me extends StatelessWidget {
  const about_me({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GradientText(
      'about me',
      style: GoogleFonts.raleway(fontSize: 22),
      gradientType: GradientType.linear,
      colors: const [
        Colors.cyan,
        Colors.blue,
      ],
    );
  }
}

class second_welcome_text extends StatelessWidget {
  const second_welcome_text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Passionate Mobile Developer',
        style: GoogleFonts.raleway(fontSize: 35, color: Colors.white));
  }
}

class welcome_text extends StatelessWidget {
  const welcome_text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("I'm Marcel",
        style: GoogleFonts.raleway(fontSize: 35, color: Colors.white));
  }
}

class Appbar_name extends StatelessWidget {
  const Appbar_name({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Marcel Owczarek', style: GoogleFonts.raleway());
  }
}
