import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormWidget extends StatelessWidget {

   final String label;
  final String hintText;


  const TextFormWidget({super.key,required this.hintText,required this.label,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        keyboardType:TextInputType.text,

        decoration: InputDecoration(


          labelText: label,
          hintText: hintText,

          hintStyle: GoogleFonts.poppins(
            color: Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          labelStyle: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2),
          ),

          // Adjust the value as needed
        ),
      ),
    );

  }
}

class TextFormWidget2 extends StatelessWidget {
  final String label;
  final String hintText;
  final Icon icon;
  const TextFormWidget2({super.key,required this.hintText,required this.label,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        keyboardType:TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(

          suffixIcon: icon,
            labelText: label,
            hintText: hintText,

            hintStyle: GoogleFonts.poppins(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            labelStyle: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2),
            ),

          // Adjust the value as needed
        ),
      ),
    );
  }
}




