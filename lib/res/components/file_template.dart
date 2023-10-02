import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:ui_fyp/res/components/text_widget.dart';

class FileTemplate extends StatelessWidget {
  const FileTemplate({Key? key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: Adaptive.h(15),
      width: Adaptive.w(90),
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
                SizedBox(height: 10,),
               TextWidget(text: 'Job Application \nLetter', fontWeight: FontWeight.w600, size: 15, color: Colors.black),
                SizedBox(height: 20),

                Row(
                  children: [

                    TextWidget(text: '12/18/2023', fontWeight: FontWeight.w500, size: 10, color: Colors.grey.shade500),
                    SizedBox(width: 10,),
                    TextWidget(text: '10:20', fontWeight: FontWeight.w500, size: 10, color: Colors.grey.shade500),


                  ],

                ),

              ],
            ),
          ),
          // Right Side: Share and Vertical Dots Icons
          Container(
            width: Adaptive.w(20),
            height: Adaptive.h(2),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.share, color: Colors.black,size: 25,),
                  Icon(Icons.more_vert, color: Colors.black),
                ],
              ),
            ),
          ),

        ],


      ),
    );

  }
}
