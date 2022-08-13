import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Dropdown.dart';

class Definiton extends StatefulWidget {
  const Definiton({Key? key}) : super(key: key);

  @override
  State<Definiton> createState() => _DefinitonState();
}

class _DefinitonState extends State<Definiton> {
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
