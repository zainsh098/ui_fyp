import 'package:flutter/material.dart';


import '../font_styles.dart';

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

          hintStyle: TextStyle(fontFamily: FontStyles.CarosSoftBold,
              fontSize:  15,color: Colors.black),
          labelStyle: TextStyle(fontFamily: FontStyles.CarosSoftBold,
              fontSize:  12,color: Colors.black),
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

            hintStyle: TextStyle(fontFamily: FontStyles.CarosSoftBold,
            fontSize:  12,color: Colors.black),
            labelStyle: TextStyle(fontFamily: FontStyles.CarosSoftBold,
                fontSize:  12,color: Colors.black),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2),
            ),

          // Adjust the value as needed
        ),
      ),
    );
  }
}




