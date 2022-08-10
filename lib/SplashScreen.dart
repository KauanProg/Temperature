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
    Timer(const Duration(milliseconds: 1500),() => Navigator.of(context).pushReplacementNamed('/home'));
    return Scaffold(
      body: Container(
        height: 667,
        width: 375,
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
              height: 133,
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
                height: 250,
                width: 250,
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