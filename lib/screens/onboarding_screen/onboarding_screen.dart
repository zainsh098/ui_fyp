import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:ui_fyp/res/font_styles.dart';
import 'package:ui_fyp/screens/Authentications/auth_gateways.dart';
import 'package:ui_fyp/screens/splash/splash_screen.dart';

class OnboradingScreen extends StatelessWidget {
  const OnboradingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return OnBoardingSlider(
      finishButtonText: 'Register',
      addButton: true,

      onFinish: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const AuthGateWays(),
          ),
        );
      },
      finishButtonStyle: const FinishButtonStyle(
        backgroundColor: Colors.blue,
      ),

      skipTextButton: const Padding(
        padding: EdgeInsets.only(top: 10),
        child: Text(
          'Skip',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      trailing: const Padding(
        padding: EdgeInsets.only(top: 10),
        child: Text(
          'Login',
          style: TextStyle(
            fontSize: 16,
            color: Colors.blue,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      trailingFunction: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const SplashScreen(),
          ),
        );
      },


      controllerColor: Colors.orange,
      totalPage: 4,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,

      background: [

        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            height: Adaptive.h(31),
            width: Adaptive.w(90),
            child: Lottie.asset(
              'assets/file.json',
              reverse: true,
              repeat: true,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
        SizedBox(
          height: height * 0.32,
          width: width * 0.92,
          child: Lottie.asset(
            'assets/file.json',
            reverse: true,
            repeat: true,
            filterQuality: FilterQuality.high,
          ),
        ),
        SizedBox(
          height: height * 0.32,
          width: width * 0.92,
          child: Lottie.asset(
            'assets/file.json',
            reverse: true,
            repeat: true,
            filterQuality: FilterQuality.high,
          ),
        ),
        SizedBox(
          height: height * 0.32,
          width: width * 0.92,
          child: Lottie.asset(
            'assets/file.json',
            reverse: true,
            repeat: true,
            filterQuality: FilterQuality.high,
          ),
        ),

      ],
      speed: 4,
      pageBodies: [

        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
             SizedBox(
                height: Adaptive.h(30),
              ),
              Text(
                'Scan All your documents \n quick and easily',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20,fontFamily: FontStyles.CarosSoftExtraBold,)
              ),
              const SizedBox(
                height: 20,
              ),
               Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(


                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: Adaptive.h(30),
              ),
              Text(
                'Object Character Recognition OCR',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(

                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Instant conversion to text with OCR \n don't worry about typing" ,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(


                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

               SizedBox(
                height: Adaptive.h(30),
              ),
              Text(
                'Keep Your docs ,IDs in hand',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(

                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'All scans are stored locally \non your device',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(

                fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'Share  Instantly',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(

                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
               Text(
                'Scan edit crop. Do whatever you want and \nthen share the files with just click.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,

                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}