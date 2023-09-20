

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ContainerWidget extends StatelessWidget {
  String text;
  double size;
  Color color;
  Color color1;
  String image;
  double logoheight;
  double logowidth;
  VoidCallback callback;


  FontWeight fontWeight;

  ContainerWidget({super.key,required this.text,required this.size,required this.color,required this.fontWeight,required this.image,required this.color1,required this.logowidth,required this.logoheight,required this.callback});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(

          style: ButtonStyle(
              shape:  MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
                  side: BorderSide(color: Colors.blue.shade50), // Border color
                ),

              ),
              backgroundColor:MaterialStatePropertyAll<Color>(Colors.white),
              minimumSize:MaterialStatePropertyAll(Size(width*.80,height*.07 ))),


          onPressed: () {
            callback;

          }, child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image.asset(image,height: logoheight  ,width:logowidth,),
          SizedBox(width: 2,),
          Text(text,style: GoogleFonts.poppins(color: color1,
            fontWeight: fontWeight,fontSize: size,

          ),),

        ],
      )),
    );
  }
}


class ContainerWidgetExtended extends StatelessWidget {

  String text;
  double size;
  Color color;
  Color color1;
  final VoidCallback callback;


  FontWeight fontWeight;

  ContainerWidgetExtended({super.key,required this.text,required this.size,required this.color,required this.fontWeight,required this.color1,required this.callback});




  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(

          style: ButtonStyle(
              shape:  MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
                  side: BorderSide(color: Colors.blue.shade50), // Border color
                ),

              ),
              backgroundColor:MaterialStatePropertyAll<Color>(color),
              minimumSize:MaterialStatePropertyAll(Size(width*.80,height*.07 ))),


          onPressed: () {
            callback;

          }, child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [


          Text(text,style: GoogleFonts.poppins(color: color1,
            fontWeight: fontWeight,fontSize: size,

          ),),

        ],
      )),
    );
  }
}
