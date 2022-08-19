// ignore_for_file: file_names

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var ScreenHeight = size.height;
    Timer(const Duration(milliseconds: 2000),() => Navigator.of(context).pushReplacementNamed('/home'));
    return Scaffold(
      body: Container(
        height: ScreenHeight * 1,
        width: size.width * 1,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: <Color>[
              Color.fromRGBO(178, 6, 0, 1),
              Color.fromRGBO(4, 3, 3, 1),
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              height: ScreenHeight * 0.20,
            ),

            ShaderMask(
              shaderCallback: (rect) => const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color> [
                  Color.fromRGBO(178, 6, 0, 1),
                  Color.fromRGBO(255, 95, 0, 0.45),
                ]
              ).createShader(rect),

              child: SvgPicture.asset(
                'assets/Term.svg',
                height: ScreenHeight * 0.375,
                width: size.width * 0.67,
              ),
            ),
            
            Container(
              height: 27,
            ),

            Text(
              "TEMPERATURE",
              style: GoogleFonts.gfsNeohellenic(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}