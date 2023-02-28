import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Marcel Owczarek',
            style: GoogleFonts.raleway(),
          ),
          backgroundColor: Colors.grey[900],
          leading: GestureDetector(
            onTap: () {},
            child: const Icon(Icons.menu),
          ),
        ),
        body: Container(
          height: 700,
          width: 400,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF2B5876),
                Color(0xff4E4376),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Lottie.network(
                              'https://assets2.lottiefiles.com/packages/lf20_o0m8c13d.json',
                              width: 50,
                              height: 50,
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 130,
                  ),
                  const SizedBox(height: 20),
                  const Material(
                    shape: CircleBorder(side: BorderSide.none),
                    elevation: 25,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/picture.jpg'),
                      radius: 180,
                    ),
                  ),
                  const SizedBox(height: 35),
                  Text(
                    "I'm Marcel",
                    style:
                        GoogleFonts.raleway(fontSize: 25, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Passionate Mobile Developer',
                    style:
                        GoogleFonts.raleway(fontSize: 25, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  GradientText(
                    'about me',
                    style: GoogleFonts.raleway(fontSize: 17),
                    gradientType: GradientType.linear,
                    colors: const [
                      Colors.cyan,
                      Colors.blue,
                    ],
                  ),
                  Lottie.network(
                    'https://assets4.lottiefiles.com/packages/lf20_dxwu3xu0.json',
                    width: 50,
                    height: 50,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
