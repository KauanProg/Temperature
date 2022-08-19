// ignore_for_file: unused_element, prefer_const_constructors

import 'package:flutter/services.dart';
import 'SplashScreen.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => 
      ResponsiveWrapper.builder(child, maxWidth: 428,minWidth: 375,
      defaultScale: true,
      breakpoints: [ResponsiveBreakpoint.autoScale(
        375,name: MOBILE,
      )]),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
