import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teste/TabelaConversao.dart';
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
        onPressed: () {
          FocusScope.of(context).requestFocus(FocusNode());
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            ),
            context: context, 
            builder: (BuildContext context){
            return Container(
              height: 377,
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
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/Table.svg",
                        height: 28,
                        width: 28,
                        color: Colors.black,
                      ),
                      Text("Table",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.bold,),),
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
                  const SizedBox(height: 5),        
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: const Color.fromRGBO(126, 5, 1, 1),
                        ),
                        width: 132,
                        height: 30,
                        child: Center(child: Text("${Temperatura.Temperatura1}",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: const Color.fromRGBO(126, 5, 1, 1),
                        ),
                        width: 132,
                        height: 30,
                        child: Center(child: Text("${Temperatura.Temperatura2}",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                      ),
                    ],
                  ),
                  TableConvert(0.01),
                  TableConvert(0.1),
                  TableConvert(1),
                  TableConvert(2),
                  TableConvert(10),
                  TableConvert(20),
                  TableConvert(100),
                  TableConvert(1000),
                ],
              ),
            );
          });
        },
        child: Text(
          "Table",
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
