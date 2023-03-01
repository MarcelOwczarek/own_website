import 'package:flutter/material.dart';
import 'package:own_website/features/widgets/Custom_NavigationDrawer.dart';
import 'package:own_website/root/Root_Page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavigationProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Root_Page(),
      ),
    );
  }
}
