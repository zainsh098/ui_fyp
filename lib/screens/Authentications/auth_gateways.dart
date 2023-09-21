import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_fyp/res/components/container_auth_gateways.dart';
import 'package:ui_fyp/res/components/text_widget.dart';

class AuthGateWays extends StatefulWidget {
  const AuthGateWays({super.key});

  @override
  State<AuthGateWays> createState() => _AuthGateWaysState();
}

class _AuthGateWaysState extends State<AuthGateWays> {
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
              height: 20,
            ),
            TextWidget(
                text: "Let's you in",
                fontWeight: FontWeight.bold,
                size: 30,
                color: Colors.black),
            const SizedBox(
              height: 30,
            ),
            ContainerWidget(
              callback: () {},
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
              height: 40,
            ),
            TextWidget(
                text: 'or',
                fontWeight: FontWeight.w600,
                size: 15,
                color: Colors.grey),
            const SizedBox(
              height: 20,
            ),
            ContainerWidgetExtended(
              text: 'Signin with Password',
              size: 14,
              color: Colors.blue,
              fontWeight: FontWeight.w600,
              color1: Colors.white,
              callback: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                    text: "Don't have an account?",
                    fontWeight: FontWeight.w500,
                    size: 12,
                    color: Colors.black),
                const SizedBox(
                  width: 5,
                ),
                TextWidget(


                    text: "Sign up",
                    fontWeight: FontWeight.w500,
                    size: 12,
                    color: Colors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
