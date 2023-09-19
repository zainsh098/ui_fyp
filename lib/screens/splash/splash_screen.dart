import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:ui_fyp/screens/components/button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../../provider/splash_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool showScaney = false;




  @override
  void initState() {
    super.initState();
    // Delay the animation of showing "scaney" by 2 seconds (adjust as needed)
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        showScaney = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final splashprovider=Provider.of<SplashProvider>(context);

    if (!splashprovider.showButton) {
      splashprovider.showafterdelay();
    }
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,


        children: [


          Center(
            child: AnimatedContainer(
              duration: Duration(seconds: 1), // Animation duration
              curve: Curves.easeOut, // Animation curve
              transform: Matrix4.translationValues(0, showScaney ? -height * 0.1 : 0, 0), // Slide up
              child: SizedBox(
                height: height * 0.3,
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
          AnimatedOpacity(
            duration: Duration(seconds: 1), // Animation duration
            opacity: showScaney ? 1.0 : 0.0, // Show/hide "scaney"

            child: Padding(
              padding: const EdgeInsets.only(top:1),
              child: Column(

                children: [

                  Row(


                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      AnimatedTextKit(
                        isRepeatingAnimation: false, // Set this to false
                        pause: Duration(milliseconds: 500),
                        animatedTexts: [
                          WavyAnimatedText(
                            'scaney',
                            textStyle: GoogleFonts.poppins(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                            speed: Duration(milliseconds: 500),
                          ),
                        ],
                      ),

                      SizedBox(width: 3,),

                      AnimatedTextKit(
                        isRepeatingAnimation: false,
                        pause: Duration(milliseconds: 900),





                        animatedTexts: [WavyAnimatedText('.Z',textStyle: GoogleFonts.poppins(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 50,
                        ), speed: Duration(milliseconds: 2000))

                        ],
                      ),




                      ],
                  ),





                ],
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Consumer<SplashProvider>(builder: (context,splashProvider,_){




              return  splashprovider.showButton
                  ? ButtonWidget(textmessage: 'Getting Started', onTap: () {

              },)
                  : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: LinearProgressIndicator(
                  minHeight: 5,

                  color: Colors.blue,
                ),
              );



            },


            ),
          ),
]
      ),


    );
  }
}
