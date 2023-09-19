import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ui_fyp/screens/onboarding_screen/onboarding_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  bool showScaney = false;
  bool showCaption=false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    // Delay the animation of showing "scaney" by 4 seconds (adjust as needed)
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        showScaney = true;


      });
    });

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        showCaption= true;
      });
    });
    Future.delayed(Duration(seconds: 7), () {
      setState(() {

        Navigator.push(context, MaterialPageRoute(builder: (context) => OnboradingScreen(),));

      });
    });
  }

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.easeOut,
                      transform: Matrix4.translationValues(0, showScaney ? -height * 0.15 : 0, 0),
                      child: SizedBox(
                        height: height * 0.32,
                        width: width * 0.92,
                        child: Lottie.asset(
                          'assets/file.json',
                          reverse: true,
                          repeat: true,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                  ),
                ),
                AnimatedOpacity(
                  duration: Duration(seconds: 1),
                  opacity: showScaney ? 1.0 : 0.0,
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 50), // Add padding above "scaney.z"
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AnimatedTextKit(
                                isRepeatingAnimation: false,
                                pause: Duration(milliseconds: 600),
                                animatedTexts: [
                                  WavyAnimatedText(
                                    'scaney',
                                    textStyle: GoogleFonts.poppins(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                    ),
                                    speed: Duration(milliseconds: 900),
                                  ),
                                ],
                              ),
                              SizedBox(width: 3,),
                              AnimatedTextKit(
                                isRepeatingAnimation: false,
                                pause: Duration(milliseconds: 600),
                                animatedTexts: [
                                  WavyAnimatedText(
                                    '.Z',
                                    textStyle: GoogleFonts.poppins(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                      fontSize: 50,
                                    ),
                                    speed: Duration(milliseconds: 2800),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
              ],
            ),

            if(showCaption)

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: AnimatedTextKit(


                      isRepeatingAnimation: true,
                      animatedTexts: [
                        TyperAnimatedText(
                          'Made With ❤️ by Zain ',
                          textStyle: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                          speed: Duration(milliseconds: 100),
                        ),
                      ],
                    ),
                  ),
                ),




          ],
        ),
      ),
    );
  }
}
