import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  const SizedBox(height: 100),
                  const CircleAvatar(
                    backgroundImage: AssetImage('images/picture.jpg'),
                    radius: 180,
                    backgroundColor: Colors.grey,
                  ),
                  const SizedBox(height: 40),
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
                  const Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    size: 40,
                    color: Colors.white,
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
