

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ContainerWidget extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final Color color1;
  final String image;
  final double logoheight;
 final  double logowidth;
  final VoidCallback callback;


  final FontWeight fontWeight;

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
              backgroundColor:const MaterialStatePropertyAll<Color>(Colors.white),
              minimumSize:MaterialStatePropertyAll(Size(width*.80,height*.07 ))),


          onPressed: () {
            callback;

          }, child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image.asset(image,height: logoheight  ,width:logowidth,),
          const SizedBox(width: 2,),
          Text(text,style: GoogleFonts.poppins(color: color1,
            fontWeight: fontWeight,fontSize: size,

          ),),

        ],
      )),
    );
  }
}




class ContainerWidgetExtended extends StatefulWidget {

 final  String text;
 final double size;
 final Color color;
 final Color color1;
 final VoidCallback callback;
 final FontWeight fontWeight;
  const ContainerWidgetExtended({super.key,required this.text,required this.size,required this.color,required this.fontWeight,required this.color1,required this.callback});

  @override
  State<ContainerWidgetExtended> createState() => _ContainerWidgetExtendedState();
}

class _ContainerWidgetExtendedState extends State<ContainerWidgetExtended> {




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
    backgroundColor: MaterialStateProperty.all<Color>(widget.color),
    minimumSize: MaterialStateProperty.all(Size(width * 0.80, height * 0.07))),



    onPressed: () {
            widget.callback();

          }, child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [


          Text(widget.text,style: GoogleFonts.poppins(color: widget.color1,
            fontWeight: widget.fontWeight,fontSize: widget.size,

          ),),

        ],
      )),
    );
  }
}




class LoginPageContainer extends StatelessWidget {

  final Color color;

  final String image;
  final double logoheight;
  final double logowidth;
  final VoidCallback callback;


  const LoginPageContainer(
      {super.key, required this.image, required this.color, required this.callback, required this.logowidth, required this.logoheight});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height;
    final width = MediaQuery
        .of(context)
        .size
        .width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: ElevatedButton(

          style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  // Adjust the radius as needed
                  side: BorderSide(color: Colors.blue.shade50), // Border color
                ),

              ),
              backgroundColor: const MaterialStatePropertyAll<Color>(
                  Colors.white),
              minimumSize: MaterialStatePropertyAll(
                  Size(width * .22, height * .07))),


          onPressed: () {
            callback;
          }, child: Row(


        children: [
          Image.asset(image, height: logoheight, width: logowidth,),


        ],
      )),

    );
  }
}


