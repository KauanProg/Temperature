import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Dropdown.dart';

class Tabela extends StatefulWidget {
  const Tabela({Key? key}) : super(key: key);

  @override
  State<Tabela> createState() => _TabelaState();
}

class _TabelaState extends State<Tabela> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 307,
      height: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color.fromRGBO(126, 5, 1, 1),
        ),
        onPressed: () {},
        child: Text(
          "Tabela",
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
