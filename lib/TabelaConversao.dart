// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Dropdown.dart';

class TableConvert extends StatelessWidget {
  double ? ValorTabela;
  dynamic ResultTable;

  TableConvert(this.ValorTabela,{Key? key}) : super(key: key);

  double ? RetornaResultado(double valor){
    if (Temperatura.Temperatura1 == "Celsius" && Temperatura.Temperatura2 == "Celsius") {
      ResultTable = valor;
    } else if (Temperatura.Temperatura1 == "Celsius" && Temperatura.Temperatura2 == "Fahrenheit") {
      ResultTable = valor * 1.8 + 32;
    } else if (Temperatura.Temperatura1 == "Celsius" && Temperatura.Temperatura2 == "Kelvin") {
      ResultTable = valor + 273;
    } else if (Temperatura.Temperatura1 == "Celsius" && Temperatura.Temperatura2 == "Rankine") {
      ResultTable = valor * (9 / 5) + 491.67;
    }
    if (Temperatura.Temperatura1 == "Fahrenheit" && Temperatura.Temperatura2 == "Celsius") {
      ResultTable = (valor - 32) / 1.8;
    } else if (Temperatura.Temperatura1 == "Fahrenheit" && Temperatura.Temperatura2 == "Fahrenheit") {
      ResultTable = valor;
    } else if (Temperatura.Temperatura1 == "Fahrenheit" && Temperatura.Temperatura2 == "Kelvin") {
      ResultTable = (valor - 32) * (5 / 9) + 273;
    } else if (Temperatura.Temperatura1 == "Fahrenheit" && Temperatura.Temperatura2 == "Rankine") {
      ResultTable = valor + 459.67;
    }
    if (Temperatura.Temperatura1 == "Kelvin" && Temperatura.Temperatura2 == "Celsius") {
      ResultTable = valor - 273;
    } else if (Temperatura.Temperatura1 == "Kelvin" && Temperatura.Temperatura2 == "Fahrenheit") {
      ResultTable = (valor - 273) * 1.8 + 32;
    } else if (Temperatura.Temperatura1 == "Kelvin" && Temperatura.Temperatura2 == "Kelvin") {
      ResultTable = valor;
    } else if (Temperatura.Temperatura1 == "Kelvin" && Temperatura.Temperatura2 == "Rankine") {
      ResultTable = valor * 1.8;
    }
    if (Temperatura.Temperatura1 == "Rankine" && Temperatura.Temperatura2 == "Celsius") {
      ResultTable = (valor - 491.67) * (5 / 9);
    } else if (Temperatura.Temperatura1 == "Rankine" && Temperatura.Temperatura2 == "Fahrenheit") {
      ResultTable = valor - 459.67;
    } else if (Temperatura.Temperatura1 == "Rankine" && Temperatura.Temperatura2 == "Kelvin") {
      ResultTable = valor * (5 / 9);
    } else if (Temperatura.Temperatura1 == "Rankine" && Temperatura.Temperatura2 == "Rankine") {
      ResultTable = valor;
    }
    ResultTable = ResultTable.toStringAsFixed(3);
    ResultTable = double.tryParse(ResultTable);
    return ResultTable;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: const Color.fromRGBO(237, 230, 227, 1),
          ),
          width: 132,
          height: 30,
          child: Center(child: Text("$ValorTabela",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.bold,),)),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: const Color.fromRGBO(237, 230, 227, 1),
          ),
          width: 132,
          height: 30,
          child: Center(child: Text("${RetornaResultado(ValorTabela!)}",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.bold,),)),
        ),
      ],
    );
  }
}
