// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Dropdown.dart';

class Formula extends StatefulWidget {
  const Formula({Key? key}) : super(key: key);

  @override
  State<Formula> createState() => _FormulaState();
}

class _FormulaState extends State<Formula> {
  String ? NovaFormula;

  void MudarFormula(){
    if (Temperatura.Temperatura1 == "Celsius" && Temperatura.Temperatura2 == "Celsius") {
      NovaFormula = "O próprio valor inserido!";
    } else if (Temperatura.Temperatura1 == "Celsius" && Temperatura.Temperatura2 == "Fahrenheit") {
      NovaFormula = "F = C * 1.8 + 32";
    } else if (Temperatura.Temperatura1 == "Celsius" && Temperatura.Temperatura2 == "Kelvin") {
      NovaFormula = "K = C + 273";
    } else if (Temperatura.Temperatura1 == "Celsius" && Temperatura.Temperatura2 == "Rankine") {
      NovaFormula = "R = C * (9 / 5) + 491.67";
    }

    if (Temperatura.Temperatura1 == "Fahrenheit" && Temperatura.Temperatura2 == "Celsius") {
      NovaFormula = "C = (F - 32) / 1.8";
    } else if (Temperatura.Temperatura1 == "Fahrenheit" && Temperatura.Temperatura2 == "Fahrenheit") {
      NovaFormula = "O próprio valor inserido!";
    } else if (Temperatura.Temperatura1 == "Fahrenheit" && Temperatura.Temperatura2 == "Kelvin") {
      NovaFormula = "K = (F - 32) * (5 / 9) + 273";
    } else if (Temperatura.Temperatura1 == "Fahrenheit" && Temperatura.Temperatura2 == "Rankine") {
      NovaFormula = "R = F + 459.67";
    }

    if (Temperatura.Temperatura1 == "Kelvin" && Temperatura.Temperatura2 == "Celsius") {
      NovaFormula = "C = K - 273";
    } else if (Temperatura.Temperatura1 == "Kelvin" && Temperatura.Temperatura2 == "Fahrenheit") {
      NovaFormula = "(K - 273) * 1.8 + 32";
    } else if (Temperatura.Temperatura1 == "Kelvin" && Temperatura.Temperatura2 == "Kelvin") {
      NovaFormula = "O próprio valor inserido!";
    } else if (Temperatura.Temperatura1 == "Kelvin" && Temperatura.Temperatura2 == "Rankine") {
      NovaFormula = "R = K * 1.8";
    }

    if (Temperatura.Temperatura1 == "Rankine" && Temperatura.Temperatura2 == "Celsius") {
      NovaFormula = "C = (R - 491.67) * (5 / 9)";
    } else if (Temperatura.Temperatura1 == "Rankine" && Temperatura.Temperatura2 == "Fahrenheit") {
      NovaFormula = "F = R - 459.67";
    } else if (Temperatura.Temperatura1 == "Rankine" && Temperatura.Temperatura2 == "Kelvin") {
      NovaFormula = "K = R * (5 / 9)";
    } else if (Temperatura.Temperatura1 == "Rankine" && Temperatura.Temperatura2 == "Rankine") {
      NovaFormula = "O próprio valor inserido!";
    }
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
          MudarFormula();
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            ),
            context: context, 
            builder: (BuildContext context){
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
                        borderRadius: BorderRadius.circular(5)
                      ),
                      height: 4,
                      width: 50,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/Formula.svg",
                        height: 28,
                        width: 28,
                      ),
                      Text("Formula",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.bold,),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${Temperatura.Temperatura1}",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromRGBO(126, 5, 1, 1),),),
                      Text("     >     ",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.bold,),),
                      Text("${Temperatura.Temperatura2}",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromRGBO(126, 5, 1, 1),),),
                    ],
                  ),
                  const SizedBox(height: 37),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromRGBO(126, 5, 1, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15,top: 7.5,bottom: 7.5),
                        child: Text(NovaFormula!,style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                    ),
                  ),
                ],
              ),
            );
          });
        },
        child: Text(
          "Formula",
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
