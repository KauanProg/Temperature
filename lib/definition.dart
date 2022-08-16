// ignore_for_file: unused_local_variable, prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, use_function_type_syntax_for_parameters

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Dropdown.dart';
import 'package:flutter/services.dart' show rootBundle;

class Definiton extends StatefulWidget {
  const Definiton({Key? key}) : super(key: key);

  @override
  State<Definiton> createState() => _DefinitonState();
}

class _DefinitonState extends State<Definiton> {
  String? Temperatura1;
  String? Temperatura2;
  String? Temperatura3;
  String? Temperatura4;
  String? TextoTemperatura1;
  String? TextoTemperatura2;

  void getTemp() async {
    Temperatura1 = await rootBundle.loadString('assets/File/Celsius.txt');
    Temperatura2 = await rootBundle.loadString('assets/File/Fahrenheit.txt');
    Temperatura3 = await rootBundle.loadString('assets/File/Kelvin.txt');
    Temperatura4 = await rootBundle.loadString('assets/File/Rankine.txt');

    if (Temperatura.Temperatura1 == "Celsius" &&
        Temperatura.Temperatura2 == "Celsius") {
      TextoTemperatura1 = Temperatura1;
      TextoTemperatura2 = Temperatura1;
    } else if (Temperatura.Temperatura1 == "Celsius" &&
        Temperatura.Temperatura2 == "Fahrenheit") {
      TextoTemperatura1 = Temperatura1;
      TextoTemperatura2 = Temperatura2;
    } else if (Temperatura.Temperatura1 == "Celsius" &&
        Temperatura.Temperatura2 == "Kelvin") {
      TextoTemperatura1 = Temperatura1;
      TextoTemperatura2 = Temperatura3;
    } else if (Temperatura.Temperatura1 == "Celsius" &&
        Temperatura.Temperatura2 == "Rankine") {
      TextoTemperatura1 = Temperatura1;
      TextoTemperatura2 = Temperatura4;
    }

    if (Temperatura.Temperatura1 == "Fahrenheit" &&
        Temperatura.Temperatura2 == "Celsius") {
      TextoTemperatura1 = Temperatura2;
      TextoTemperatura2 = Temperatura1;
    } else if (Temperatura.Temperatura1 == "Fahrenheit" &&
        Temperatura.Temperatura2 == "Fahrenheit") {
      TextoTemperatura1 = Temperatura2;
      TextoTemperatura2 = Temperatura2;
    } else if (Temperatura.Temperatura1 == "Fahrenheit" &&
        Temperatura.Temperatura2 == "Kelvin") {
      TextoTemperatura1 = Temperatura2;
      TextoTemperatura2 = Temperatura3;
    } else if (Temperatura.Temperatura1 == "Fahrenheit" &&
        Temperatura.Temperatura2 == "Rankine") {
      TextoTemperatura1 = Temperatura2;
      TextoTemperatura2 = Temperatura4;
    }

    if (Temperatura.Temperatura1 == "Kelvin" &&
        Temperatura.Temperatura2 == "Celsius") {
      TextoTemperatura1 = Temperatura3;
      TextoTemperatura2 = Temperatura1;
    } else if (Temperatura.Temperatura1 == "Kelvin" &&
        Temperatura.Temperatura2 == "Fahrenheit") {
      TextoTemperatura1 = Temperatura3;
      TextoTemperatura2 = Temperatura2;
    } else if (Temperatura.Temperatura1 == "Kelvin" &&
        Temperatura.Temperatura2 == "Kelvin") {
      TextoTemperatura1 = Temperatura3;
      TextoTemperatura2 = Temperatura3;
    } else if (Temperatura.Temperatura1 == "Kelvin" &&
        Temperatura.Temperatura2 == "Rankine") {
      TextoTemperatura1 = Temperatura3;
      TextoTemperatura2 = Temperatura4;
    }

    if (Temperatura.Temperatura1 == "Rankine" &&
        Temperatura.Temperatura2 == "Celsius") {
      TextoTemperatura1 = Temperatura4;
      TextoTemperatura2 = Temperatura1;
    } else if (Temperatura.Temperatura1 == "Rankine" &&
        Temperatura.Temperatura2 == "Fahrenheit") {
      TextoTemperatura1 = Temperatura4;
      TextoTemperatura2 = Temperatura2;
    } else if (Temperatura.Temperatura1 == "Rankine" &&
        Temperatura.Temperatura2 == "Kelvin") {
      TextoTemperatura1 = Temperatura4;
      TextoTemperatura2 = Temperatura3;
    } else if (Temperatura.Temperatura1 == "Rankine" &&
        Temperatura.Temperatura2 == "Rankine") {
      TextoTemperatura1 = Temperatura4;
      TextoTemperatura2 = Temperatura4;
    }
  }

  late OverlayEntry overlayEntry;

  void FecharOverlay() {
    overlayEntry.remove();
  }

  showOverlay(BuildContext context) {
    OverlayState? overlayState = Overlay.of(context);
    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 115,
        right: 23,
        child: Container(
          alignment: Alignment.center,
          width: 312,
          height: 500,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 1),
                color: Colors.black,
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            children: [
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    "assets/Definition.svg",
                    height: 32,
                    width: 32,
                  ),
                  Material(
                    child: Text(
                      "Definition",
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          FecharOverlay();
                        },
                        child: Text(
                          "X",
                          style: GoogleFonts.inter(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: const Color.fromRGBO(126, 5, 1, 1),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Material(
                    child: Text(
                      "${Temperatura.Temperatura1}",
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Material(
                    child: Text(TextoTemperatura1!,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold))),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: const Color.fromRGBO(126, 5, 1, 1),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Material(
                    child: Text(
                      "${Temperatura.Temperatura2}",
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Material(
                    child: Text(TextoTemperatura2!,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold))),
              ),
            ],
          ),
        ),
      ),
    );
    overlayState?.insert(overlayEntry);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 307,
      height: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color.fromRGBO(126, 5, 1, 1),
        ),
        onPressed: () {
          getTemp();
          showOverlay(context);
        },
        child: Text(
          "Definiton",
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
