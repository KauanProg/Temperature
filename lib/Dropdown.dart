// ignore_for_file: file_names, must_be_immutable, avoid_print, non_constant_identifier_names, unused_element, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double? numero;
String? DropDown1 = "Celsius";
String? DropDown2 = "Fahrenheit";

// ignore: must_be_immutable
class DropDown extends StatefulWidget {
  String? valor;
  int? numero;

  DropDown(this.valor, this.numero, {Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<DropDown> createState() => DropDownState(valor, numero);
}

class DropDownState extends State<DropDown> {
  String? value;
  int? numero;

  DropDownState(this.value, this.numero) {
    if (numero == 1) {
      DropDown1 = value;
    } else {
      DropDown2 = value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 129,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(126, 5, 1, 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButtonFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
        iconEnabledColor: Colors.white,
        isExpanded: true,
        style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.bold),
        dropdownColor: const Color.fromRGBO(126, 5, 1, 1),
        value: value,
        onChanged: (String? NovoValor) {
          setState(() {
            value = NovoValor!;
            if (numero == 1) {
              DropDown1 = value;
            } else {
              DropDown2 = value;
            }
          });
        },
        items: const [
          DropdownMenuItem(value: "Celsius", child: Text("Celsius")),
          DropdownMenuItem(value: "Fahrenheit", child: Text("Fahrenheit")),
          DropdownMenuItem(value: "Kelvin", child: Text("Kelvin")),
          DropdownMenuItem(value: "Rankine", child: Text("Rankine")),
        ],
      ),
    );
  }
}

class Temperatura {
  static String? get Temperatura1 => DropDown1;
  static String? get Temperatura2 => DropDown2;
}

