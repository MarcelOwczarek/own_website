// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, avoid_web_libraries_in_flutter, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:own_website/features/Contact_Page/Contact_Page.dart';
import 'package:own_website/features/Home_Page/Home_Page.dart';
import 'package:own_website/features/Projects_Page/Projects_Page.dart';
import 'package:own_website/features/Home_Page/texts/text_mobile.dart';
import 'package:own_website/features/Home_Page/widgets/Custom_NavigationDrawer.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Root_Page extends StatelessWidget {
  Root_Page({
    super.key,
  });

  final isMobile = SizerUtil.deviceType == DeviceType.mobile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Custom_NavigationDrawer(),
      appBar: AppBar(
        title: text_mobile[0], // <- my Name and surname
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        height: isMobile ? 100.h : 500.h,
        width: isMobile ? 100.w : 500.w,
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
        child: const MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => selected_page();

  Widget selected_page() {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    switch (navigationItem) {
      case NavigationItem.homepage:
        return Home_Page();
      case NavigationItem.projects:
        return Projects_Page();
      case NavigationItem.contact:
        return Contact_Page();
    }
  }
}
