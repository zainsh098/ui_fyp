import 'package:flutter/material.dart';
import 'package:ui_fyp/res/components/container_auth_gateways.dart';
import 'package:ui_fyp/res/components/file_template.dart';
import 'package:ui_fyp/res/components/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: Row(
mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(

              onPressed: () {
                // Add your action for the first FAB here
              },
              child: Icon(Icons.camera_alt),
            ),
            SizedBox(width: 16), // Add some spacing between FABs
            FloatingActionButton(
              onPressed: () {
                // Add your action for the second FAB here
              },
              child: Icon(Icons.browse_gallery_outlined),
            ),
         // Add some spacing between FABs

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,


      
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Image.asset(
                    'assets/scan.png',
                    height: 35,
                    width: 35,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: TextWidget(
                      text: 'Scaney.Z',
                      fontWeight: FontWeight.w600,
                      size: 22,
                      color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 35,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomeScreenContainer(
                      image: 'assets/scan1.png',
                      color: Colors.pink.shade50,
                      logoheight: 30,
                      logowidth: 30),
                  HomeScreenContainer(
                      image: 'assets/scan1.png',
                      color: Colors.brown.shade50,
                      logoheight: 30,
                      logowidth: 30),
                  HomeScreenContainer(
                      image: 'assets/writing.png',
                      color: Colors.pink.shade50,
                      logoheight: 35,
                      logowidth: 35),
                  HomeScreenContainer(
                      image: 'assets/scissors.png',
                      color: Colors.blue.shade50,
                      logoheight: 30,
                      logowidth: 30)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextWidget(
                      text: 'Scan code',
                      fontWeight: FontWeight.w500,
                      size: 12,
                      color: Colors.black),
                  TextWidget(
                      text: 'Watermark',
                      fontWeight: FontWeight.w500,
                      size: 12,
                      color: Colors.black),
                  TextWidget(
                      text: 'eSign PDF',
                      fontWeight: FontWeight.w500,
                      size: 12,
                      color: Colors.black),
                  TextWidget(
                      text: 'Split PDF',
                      fontWeight: FontWeight.w500,
                      size: 12,
                      color: Colors.black)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomeScreenContainer(
                      image: 'assets/merge.png',
                      color: Colors.pink.shade50,
                      logoheight: 30,
                      logowidth: 30),
                  HomeScreenContainer(
                      image: 'assets/data-encryption.png',
                      color: Colors.brown.shade50,
                      logoheight: 30,
                      logowidth: 30),
                  HomeScreenContainer(
                      image: 'assets/minimize.png',
                      color: Colors.pink.shade50,
                      logoheight: 28,
                      logowidth: 28),
                  HomeScreenContainer(
                      image: 'assets/select-all.png',
                      color: Colors.blue.shade50,
                      logoheight: 40,
                      logowidth: 40)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextWidget(
                      text: 'Merge PDF',
                      fontWeight: FontWeight.w500,
                      size: 12,
                      color: Colors.black),
                  SizedBox(
                    width: 5,
                  ),
                  TextWidget(
                      text: 'Protect PDF',
                      fontWeight: FontWeight.w500,
                      size: 12,
                      color: Colors.black),
                  TextWidget(
                      text: 'Compresss PDF',
                      fontWeight: FontWeight.w500,
                      size: 12,
                      color: Colors.black),
                  SizedBox(
                    width: 1,
                  ),
                  TextWidget(
                      text: 'All tools',
                      fontWeight: FontWeight.w500,
                      size: 12,
                      color: Colors.black),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Divider(
              color: Colors.grey.shade200,
              endIndent: 10,
              indent: 15,

            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  TextWidget(text: 'Recent Files', fontWeight: FontWeight.w600, size: 22, color: Colors.black),
                  Icon(Icons.arrow_forward,color: Colors.blue,size: 25,)
                ],

              ),
            ),
            SizedBox(height: 10,),
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                  return   Column(
                    children: [
                      FileTemplate(),
                      SizedBox(height: 10,),

                    ],
                  );
                  
                },),
              ),


          ],
        ),
      ),
    );
  }
}
