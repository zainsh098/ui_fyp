import 'package:flutter/material.dart';

import 'package:ui_fyp/res/components/text_widget.dart';

import '../font_styles.dart';
class FileTemplate extends StatelessWidget {
  const FileTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.14,
      width: width * 0.90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.shade200.withOpacity(0.4), // Adjust the opacity for the glass effect
            spreadRadius: 1,
            blurRadius: 3, // Adjust the blur radius for the glass effect
            offset: const Offset(5, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          // Left Side: Image
          Container(
            width: width * 0.22,
            height: height * 0.13,
            child: Image.asset(
              'assets/image1.jpeg',
              width: width * 0.22,
              height: height * 0.13,
            ),
          ),
          // Middle Side: Text, Time, and Date
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                TextWidget(text: 'Job Application \nLetter', textStyle: const TextStyle(fontFamily: FontStyles.CarosSoft,fontSize: 12)),
                const SizedBox(height: 15),
                Row(
                  children: [
                    TextWidget(text: '12/18/2023', textStyle: const TextStyle(fontFamily: FontStyles.CarosSoft,fontSize: 12)),
                    const SizedBox(width: 10,),
                    TextWidget(text: '10:20', textStyle: const TextStyle(fontFamily: FontStyles.CarosSoft,fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
          // Right Side: Share and Vertical Dots Icons
          Row(
            children: [
              VerticalDivider(
                color: Colors.grey.shade400,
                width: 1,
                thickness: 2,
                indent: 15,
                endIndent: 15,
              ),
              const SizedBox(width: 15,),
              const Icon(Icons.share, color: Colors.black, size: 26,),
              const SizedBox(width: 15,),
              const Icon(Icons.more_vert, color: Colors.black,size: 26,),
              const SizedBox(width: 10,),
            ],
          ),
        ],
      ),
    );
  }
}



class FileTemplate2 extends StatelessWidget {
  const FileTemplate2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [

      Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
         
          child: ListTile(

            tileColor: Colors.white,
     leading: Image.asset('assets/pdf3.png',height: 40,width: 40,),
            title: TextWidget(text: 'MyResume.pdf',textStyle: const TextStyle(color: Colors.black,fontFamily: FontStyles.CarosSoft,fontSize: 15),),
            trailing: Icon(Icons.more_horiz_outlined,size: 35,color: Colors.grey.shade600,),
            subtitle: Row(
              children: [
                TextWidget(text: '12-9-2023', textStyle: const TextStyle(color: Colors.grey,fontFamily: FontStyles.CarosSoftLight,fontSize: 11) ),
                const SizedBox(width: 5,),
                TextWidget(text: '1:03 PM', textStyle: const TextStyle(color: Colors.grey,fontFamily: FontStyles.CarosSoft,fontSize: 11) ),



              ],


            ),


          ),
        ),
      ),




    ],


    );
  }
}
