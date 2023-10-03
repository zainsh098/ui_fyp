
import 'package:flutter/material.dart';


class TextWidget extends StatelessWidget {

  String text;

  TextStyle textStyle;



   TextWidget({super.key,required this.text,required this.textStyle,});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: textStyle);
  }
}
