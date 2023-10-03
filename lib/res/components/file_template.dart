import 'package:flutter/material.dart';

import 'package:ui_fyp/res/components/text_widget.dart';

import '../font_styles.dart';

class FileTemplate extends StatelessWidget {
  const FileTemplate({Key? key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.13,
      width: width * 0.90,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
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
                    TextWidget(text: '10:20', textStyle:const  TextStyle(fontFamily: FontStyles.CarosSoft,fontSize: 12)),


                  ],

                ),


              ],
            ),
          ),
          // Right Side: Share and Vertical Dots Icons
          Row(
            children: [
              VerticalDivider(
                color: Colors.grey.shade400, // Customize the color of the divider
                width: 1, // Customize the width of the divider
                thickness: 2, // Customize the thickness of the divider
                indent: 15, // Customize the start padding of the divider
                endIndent: 15, // Customize the end padding of the divider
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
