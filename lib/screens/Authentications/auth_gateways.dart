import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ui_fyp/res/components/container_auth_gateways.dart';
import 'package:ui_fyp/res/components/text_widget.dart';
import 'package:ui_fyp/screens/Authentications/Auth_Gateways_services/google_auth_service.dart';
import 'package:ui_fyp/screens/Authentications/create_account.dart';

import '../../res/font_styles.dart';

class AuthGateWays extends StatefulWidget {
  const AuthGateWays({super.key});

  @override
  State<AuthGateWays> createState() => _AuthGateWaysState();
}

class _AuthGateWaysState extends State<AuthGateWays> {


  Google_AuthService authService=Google_AuthService();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SvgPicture.asset(
                  'assets/authwelcome.svg',
                  height: height * .25,
                  theme: const SvgTheme(currentColor: Colors.blue),
                  width: width * .40,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextWidget(
                text: "Let's you in",
                textStyle:TextStyle(
                  fontFamily: FontStyles.CarosSoftExtraBold,
                  fontSize: 35,
                ),),
            const SizedBox(
              height: 20,
            ),
            ContainerWidget(
              callback: () {
                authService.handleSignin(context);

              },
              text: 'Continue with Google',
              size: 15,
              color: Colors.white54,
              fontWeight: FontWeight.w500,
              image: 'assets/google.png',
              color1: Colors.black,
              logoheight: 25,
              logowidth: 50,
            ),
            const SizedBox(
              height: 10,
            ),
            ContainerWidget(
              callback: () {},
              text: 'Continue with Facebook',
              size: 15,
              color: Colors.white54,
              fontWeight: FontWeight.w500,
              image: 'assets/facebook.png',
              color1: Colors.black,
              logoheight: 25,
              logowidth: 50,
            ),
            const SizedBox(
              height: 10,
            ),
            ContainerWidget(
              callback: () {},
              text: 'Continue with Apple',
              size: 15,
              color: Colors.white54,
              fontWeight: FontWeight.w500,
              image: 'assets/apple.png',
              color1: Colors.black,
              logoheight: 25,
              logowidth: 50,
            ),
            const SizedBox(
              height: 30,
            ),
            TextWidget(
                text: 'or', textStyle: TextStyle(fontFamily: FontStyles.CarosSoftLight),


              ),
            const SizedBox(
              height: 20,
            ),
            ContainerWidgetExtended(
              text: 'Signin with Password',
              size: 14,
              color: Colors.blue,
              fontWeight: FontWeight.w600,
              color1: Colors.white,
              callback: () {

                Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount(),));

              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                    text: "Don't have an account?",


                    textStyle: TextStyle(fontFamily: FontStyles.CarosSoftLight),),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount(),));
                  },
                  child: TextWidget(


                      text: "Sign up",


                      textStyle: TextStyle(fontFamily: FontStyles.CarosSoftMedium,color: Colors.blue),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
