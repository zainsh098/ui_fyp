import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

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
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        showScaney = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 1), // Animation duration
            curve: Curves.easeOut, // Animation curve
            height: showScaney ? 0 : height, // Initial full height, then 0
            child: Lottie.asset(
              'assets/file.json',
              reverse: true,
              repeat: true,
              filterQuality: FilterQuality.high,
            ),
          ),
          Center(
            child: AnimatedOpacity(
              duration: Duration(seconds: 1), // Animation duration
              opacity: showScaney ? 1.0 : 0.0, // Show/hide "scaney"
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'scaney',
                    style: GoogleFonts.poppins(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '.',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 50,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
