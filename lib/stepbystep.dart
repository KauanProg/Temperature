import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Dropdown.dart';

class StepByStep extends StatefulWidget {
  const StepByStep({Key? key}) : super(key: key);

  @override
  State<StepByStep> createState() => _StepByStepState();
}

class _StepByStepState extends State<StepByStep> {
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
          "StepByStep",
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
