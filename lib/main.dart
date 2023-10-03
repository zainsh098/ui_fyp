

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:ui_fyp/provider/splash_provider.dart';
import 'package:ui_fyp/screens/Authentications/auth_gateways.dart';
import 'package:ui_fyp/screens/onboarding_screen/onboarding_screen.dart';


import 'package:ui_fyp/screens/splash/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MultiProvider(providers: [
          ChangeNotifierProvider(create: (_) => SplashProvider())

        ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Fyp ',
            theme: ThemeData(

              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
              useMaterial3: true,
            ),
            home: const AuthGateWays(),
          ),);
      });

    }
  }









