
import 'package:flutter/material.dart';
import 'package:ui_fyp/res/components/container_auth_gateways.dart';
import 'package:ui_fyp/res/components/file_template.dart';
import 'package:ui_fyp/res/components/text_widget.dart';
import 'package:ui_fyp/screens/Authentications/Auth_Gateways_services/google_auth_service.dart';

import '../../res/components/bottom_navigation_bar.dart';
import '../../res/font_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    Google_AuthService google_authService=Google_AuthService();

    return Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed: () {
        google_authService.handleSignOut(context);

      }, icon: Icon(Icons.logout,color: Colors.black,  ))],
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        title: Row(
          children: [
            TextWidget(
                text: 'S',
                textStyle: const TextStyle(
                  fontFamily: FontStyles.CarosSoftExtraBold,
                  fontSize: 25,
                  color: Colors.blue, // Customize the color
                )),
            TextWidget(
                text: 'can',
                textStyle: const TextStyle(
                  fontFamily: FontStyles.CarosSoftBold,
                  fontSize: 20,
                  color: Colors.black, // Customize the color
                )),
            TextWidget(
                text: 'ey',
                textStyle: const TextStyle(
                  fontFamily: FontStyles.CarosSoftBold,
                  fontSize: 20,
                  color: Colors.blue, // Customize the color
                )),
            TextWidget(
                text: '.Z',
                textStyle: const TextStyle(
                  fontFamily: FontStyles.CarosSoftBold,
                  fontSize: 13,
                  color: Colors.grey,
                )),
          ],
        ),
      ),
      backgroundColor:  Colors.grey.shade100,
//       floatingActionButton: Padding(
//         padding: const EdgeInsets.only(bottom: 60),
//         child: Row(
// mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             FloatingActionButton(
//               heroTag:'camera' ,
//
//               onPressed: () {
//                 // Add your action for the first FAB here
//               },
//               child: const Icon(Icons.camera_alt),
//             ),
//             const SizedBox(width: 16), // Add some spacing between FABs
//             FloatingActionButton(
//               onPressed: () {
//                 // Add your action for the second FAB here
//               },
//               child: const Icon(Icons.browse_gallery_outlined),
//             ),
//          // Add some spacing between FABs
//
//           ],
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,





      body: SafeArea(
        child: Column(

          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'S',
                              style: TextStyle(
                                fontFamily: FontStyles.CarosSoftExtraBold,
                                fontSize: 25,
                                color: Colors.blue, // Customize the color
                              ),
                            ),

                            TextSpan(
                              text: 'can',
                              style: TextStyle(
                                fontFamily: FontStyles.CarosSoftBold,
                                fontSize: 20,
                                color: Colors.black, // Customize the color
                              ),
                            ),
                            TextSpan(
                              text: 'ey',
                              style: TextStyle(
                                fontFamily: FontStyles.CarosSoftBold,
                                fontSize: 20,
                                color: Colors.blue, // Customize the color
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextWidget(
                        text: '.Z',
                        textStyle: const TextStyle(
                          fontFamily: FontStyles.CarosSoftBold,
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 35,
                    ),
                  ),
                ),
              ],
            ),


            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomeScreenContainer(
                      image: 'assets/scan1.png',
                      color: Colors.pink.shade50,
                      logoheight: height * 0.07,
                      logowidth: width * 0.07),
                  HomeScreenContainer(
                      image: 'assets/scan1.png',
                      color: Colors.brown.shade50,
                      logoheight: height * 0.07,
                      logowidth: width * 0.07),
                  HomeScreenContainer(
                      image: 'assets/writing.png',
                      color: Colors.pink.shade50,
                      logoheight: height * 0.07,
                      logowidth: width * 0.07),
                  HomeScreenContainer(
                      image: 'assets/scissors.png',
                      color: Colors.blue.shade50,
                      logoheight: height * 0.07,
                      logowidth: width * 0.07)
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextWidget(
                      text: 'Scan code',
                      textStyle: const TextStyle(fontFamily: FontStyles.CarosSoftMedium,fontSize: 11)),
                  TextWidget(
                      text: 'Watermark',
                      textStyle:  const TextStyle(fontFamily: FontStyles.CarosSoftMedium,fontSize: 11)),
                  TextWidget(
                      text: 'eSign PDF',
                      textStyle:  const TextStyle(fontFamily: FontStyles.CarosSoftMedium,fontSize: 11)),
                  TextWidget(
                      text: 'Split PDF',
                      textStyle:  const TextStyle(fontFamily: FontStyles.CarosSoftMedium,fontSize: 11)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomeScreenContainer(
                      image: 'assets/merge.png',
                      color: Colors.pink.shade50,
                      logoheight: height * 0.07,
                      logowidth: width * 0.07),
                  HomeScreenContainer(
                      image: 'assets/data-encryption.png',
                      color: Colors.brown.shade50,
                      logoheight: height * 0.07,
                      logowidth: width * 0.07),
                  HomeScreenContainer(
                      image: 'assets/minimize.png',
                      color: Colors.pink.shade50,
                      logoheight: height * 0.06,
                      logowidth: width * 0.06),
                  HomeScreenContainer(
                      image: 'assets/select-all.png',
                      color: Colors.blue.shade50,
                      logoheight: height * 0.09,
                      logowidth: width * 0.09)
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextWidget(
                      text: 'Merge PDF',
                      textStyle:  const TextStyle(fontFamily: FontStyles.CarosSoftMedium,fontSize: 11)),
                  const SizedBox(
                    width: 5,
                  ),
                  TextWidget(
                      text: 'Protect PDF',
                      textStyle:   const TextStyle(fontFamily: FontStyles.CarosSoftMedium,fontSize: 11)),
                  TextWidget(
                      textStyle:   const TextStyle(fontFamily: FontStyles.CarosSoftMedium,fontSize: 11), text: 'Compress PDF',),
                  const SizedBox(
                    width: 1,
                  ),
                  TextWidget(
                      textStyle: const TextStyle(fontFamily: FontStyles.CarosSoftMedium,fontSize: 11), text: 'All Tools',),

                ],
              ),
            ),
            const SizedBox(height: 10,),
            Divider(
              color: Colors.blue.shade100,
              endIndent: 10,
              indent: 15,

            ),
            const SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  TextWidget(text: 'Recent Files', textStyle: const TextStyle(fontFamily: FontStyles.CarosSoftMedium,fontSize: 15,color: Colors.black)),
                  const Icon(Icons.arrow_forward,color: Colors.blue,size: 25,)
                ],

              ),
            ),
            const SizedBox(height: 10,),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                  return   const Column(
                    children: [
                      FileTemplate2(),
                      SizedBox(height: 5,),


                    ],
                  );

                },),
              ),


          ],
        ),
      ),
    bottomNavigationBar: const BottomNavgationBar()

    );
  }
}
