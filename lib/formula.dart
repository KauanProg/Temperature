import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Dropdown.dart';

class Formula extends StatefulWidget {
  const Formula({Key? key}) : super(key: key);

  @override
  State<Formula> createState() => _FormulaState();
}

class _FormulaState extends State<Formula> {
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
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            ),
            context: context, 
            builder: (BuildContext context){
            return Container(
              height: 251,
              width: double.infinity,
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
