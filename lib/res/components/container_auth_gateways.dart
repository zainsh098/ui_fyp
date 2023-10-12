

import 'package:flutter/material.dart';

import 'package:ui_fyp/res/components/text_widget.dart';
import 'package:ui_fyp/res/font_styles.dart';


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
                  borderRadius: BorderRadius.circular(5.0), // Adjust the radius as needed
                  side: BorderSide(color: Colors.blue.shade50), // Border color
                ),

              ),
              backgroundColor:const MaterialStatePropertyAll<Color>(Colors.white),
              minimumSize:MaterialStatePropertyAll(Size(width*.80,height*.07 ))),


          onPressed: callback, child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image.asset(image,height: logoheight  ,width:logowidth,),
          const SizedBox(width: 2,),
          Text(text,style: TextStyle(fontSize: 15,fontFamily: FontStyles.CarosSoftMedium,color: Colors.black),),

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
                  borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
                  side: BorderSide(color: Colors.blue.shade50), // Border color
                ),

              ),
    backgroundColor: MaterialStateProperty.all<Color>(widget.color),
    minimumSize: MaterialStateProperty.all(Size(width * 0.80, height*0.075))),



    onPressed: () {
            widget.callback();

          }, child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [


          TextWidget(text: 'Signin With Password', textStyle: TextStyle(fontFamily: FontStyles.CarosSoftBold,color: Colors.white)),


        ],
      ))
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
                  borderRadius: BorderRadius.circular(10.0),
                  // Adjust the radius as needed
                  side: BorderSide(color: Colors.blue.shade50), // Border color
                ),

              ),
              backgroundColor: const MaterialStatePropertyAll<Color>(
                  Colors.white),
              minimumSize: MaterialStatePropertyAll(
                  Size(width * .20, height * .07))),


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



class HomeScreenContainer extends StatelessWidget {



 final Color color;

  final String image;
  final double logoheight;
  final double logowidth;



  const HomeScreenContainer({super.key,required this.image,required this.color,required this.logoheight,required this.logowidth});


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.06,
      width: width * 0.15,
      decoration: BoxDecoration(shape: BoxShape.circle,

        color: color,

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: logoheight, width: logowidth),
        ],
      ),
    );

  }
}

