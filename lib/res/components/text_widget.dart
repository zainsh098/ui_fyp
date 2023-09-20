
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {

  String text;
  double size;
  Color color;
  FontWeight fontWeight;


   TextWidget({super.key,required this.text,required this.fontWeight,required this.size,required this.color,});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.poppins(
      fontSize: size,
      fontWeight: fontWeight,
      color: color,


    ),);
  }
}
