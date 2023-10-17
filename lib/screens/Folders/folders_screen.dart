import 'package:flutter/material.dart';
import 'package:ui_fyp/res/components/text_widget.dart';
import 'package:ui_fyp/res/font_styles.dart';

import '../../res/components/bottom_navigation_bar.dart';

class FoldersMainScreen extends StatelessWidget {
  const FoldersMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      bottomNavigationBar: BottomNavgationBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/google.png',
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextWidget(
                      text: 'Files',
                      textStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: FontStyles.CarosSoftBold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      icon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      icon: Icon(
                        Icons.more_rounded,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              endIndent: 15,
              indent: 10,

            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: TextWidget(
                        text: 'Total: 128 Files',
                        textStyle: TextStyle(
                          fontSize: 16,

                          fontFamily: FontStyles.CarosSoftBold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      icon: Icon(
                        Icons.add_road_rounded,
                        size: 25,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      icon: Icon(
                        Icons.create_new_folder_outlined,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 10
                    ),
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
