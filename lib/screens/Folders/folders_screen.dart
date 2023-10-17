import 'package:flutter/material.dart';
import 'package:ui_fyp/res/components/text_widget.dart';
import 'package:ui_fyp/res/font_styles.dart';

import '../../res/components/bottom_navigation_bar.dart';


class FoldersMainScreen extends StatelessWidget {
  const FoldersMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavgationBar(),
      body: SafeArea(
        child: Column(

          children: [
              SizedBox(height: 10,),
            Row(
            crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/google.png',height: 15,width: 15,),
                SizedBox(width: 5,),
                TextWidget(text: 'Files', textStyle:TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontFamily: FontStyles.CarosSoftBold),),
                IconButton(onPressed: () {

                }, icon: Icon(Icons.search,size: 35,)),
                IconButton(onPressed: () {

                }, icon: Icon(Icons.more_rounded,size: 30,)),


              ],


            ),



          ],


        ),
      ),

    );
  }
}
