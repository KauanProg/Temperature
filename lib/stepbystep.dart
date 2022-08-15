// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Dropdown.dart';
import 'HomePage.dart';

class StepByStep extends StatefulWidget {
  const StepByStep({Key? key}) : super(key: key);

  @override
  State<StepByStep> createState() => _StepByStepState();
}

class _StepByStepState extends State<StepByStep> {
  String? Passo1;
  String? Passo2;
  dynamic ResultadoCalculo;

  void ResultadoStepByStep(double valor) {
    if (DropDown1 == "Celsius" && DropDown2 == "Celsius") {
      ResultadoCalculo = valor;
      Passo1 = "Null";
      Passo2 = "Null";
    } else if (DropDown1 == "Celsius" && DropDown2 == "Fahrenheit") {
      ResultadoCalculo = valor * 1.8 + 32;
      Passo1 = "$valor * 1.8";
      Passo2 = "${valor * 1.8} + 32";
    } else if (DropDown1 == "Celsius" && DropDown2 == "Kelvin") {
      ResultadoCalculo = valor + 273;
      Passo1 = "$valor + 273";
      Passo2 = "Null";
    } else if (DropDown1 == "Celsius" && DropDown2 == "Rankine") {
      ResultadoCalculo = valor * (9 / 5) + 491.67;
      Passo1 = "$valor * (9 / 5)";
      Passo2 = "${valor * (9 / 5)} + 491.67";
    }
    if (DropDown1 == "Fahrenheit" && DropDown2 == "Celsius") {
      ResultadoCalculo = (valor - 32) / 1.8;
      Passo1 = "$valor - 32";
      Passo2 = "${valor - 32} / 1.8";
    } else if (DropDown1 == "Fahrenheit" && DropDown2 == "Fahrenheit") {
      ResultadoCalculo = valor;
      Passo1 = "Null";
      Passo2 = "Null";
    } else if (DropDown1 == "Fahrenheit" && DropDown2 == "Kelvin") {
      ResultadoCalculo = (valor - 32) * (5 / 9) + 273;
      Passo1 = "$valor - 32";
      Passo2 = "${valor - 32} * (5 / 9) + 273";
    } else if (DropDown1 == "Fahrenheit" && DropDown2 == "Rankine") {
      ResultadoCalculo = valor + 459.67;
      Passo1 = "$valor + 459.67";
      Passo2 = "Null";
    }
    if (DropDown1 == "Kelvin" && DropDown2 == "Celsius") {
      ResultadoCalculo = valor - 273;
      Passo1 = "$valor - 273";
      Passo2 = "Null";
    } else if (DropDown1 == "Kelvin" && DropDown2 == "Fahrenheit") {
      ResultadoCalculo = (valor - 273) * 1.8 + 32;
      Passo1 = "$valor - 273";
      Passo2 = "${valor - 273} * 1.8 + 32";
    } else if (DropDown1 == "Kelvin" && DropDown2 == "Kelvin") {
      ResultadoCalculo = valor;
      Passo1 = "Null";
      Passo2 = "Null";
    } else if (DropDown1 == "Kelvin" && DropDown2 == "Rankine") {
      ResultadoCalculo = valor * 1.8;
      Passo1 = "$valor * 1.8";
      Passo2 = "Null";
    }
    if (DropDown1 == "Rankine" && DropDown2 == "Celsius") {
      ResultadoCalculo = (valor - 491.67) * (5 / 9);
      Passo1 = "$valor - 491.67";
      Passo2 = "${valor - 491.67} * (5 / 9)";
    } else if (DropDown1 == "Rankine" && DropDown2 == "Fahrenheit") {
      ResultadoCalculo = valor - 459.67;
      Passo1 = "$valor - 459.67";
      Passo2 = "Null";
    } else if (DropDown1 == "Rankine" && DropDown2 == "Kelvin") {
      ResultadoCalculo = valor * (5 / 9);
      Passo1 = "$valor * (5 / 9)";
      Passo2 = "Null";
    } else if (DropDown1 == "Rankine" && DropDown2 == "Rankine") {
      ResultadoCalculo = valor;
      Passo1 = "Null";
      Passo2 = "Null";
    }
    ResultadoCalculo = ResultadoCalculo.toStringAsFixed(3);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 307,
      height: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color.fromRGBO(126, 5, 1, 1),
        ),
        onPressed: () {
          if (valor != null) {
            ResultadoStepByStep(valor);
          } else {
            Passo1 = "Null";
            Passo2 = "Null";
            ResultadoCalculo = "0";
          }
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              ),
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 251,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(4, 3, 3, 0.45),
                              borderRadius: BorderRadius.circular(5)),
                          height: 4,
                          width: 50,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/Step.png",
                            height: 32,
                            width: 32,
                          ),
                          Text(
                            "Step By Step",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${Temperatura.Temperatura1}",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromRGBO(126, 5, 1, 1),
                            ),
                          ),
                          Text(
                            "     >     ",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${Temperatura.Temperatura2}",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromRGBO(126, 5, 1, 1),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "1º Step",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        Passo1!,
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "2º Step",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        Passo2!,
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Result",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ResultadoCalculo,
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              });
        },
        child: Text(
          "Step By Step",
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
