import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyling extends StatelessWidget {
  const TextStyling({super.key,
    required this.name,
    required this.size,
    required this.weight,
    this.color = Colors.black,

  });
  final String name;
  final double size;
  final FontWeight weight;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return  Text(name , style: GoogleFonts.rubik(
        fontSize: size,
        fontWeight: weight,
        color: color,
    ));
  }
}
