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
      ),
    );
  }
}
