import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:ui_fyp/provider/folder_provider.dart';

import 'package:ui_fyp/provider/splash_provider.dart';
import 'package:ui_fyp/screens/Folders/folders_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  const MyApp({super.key,});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashProvider()),
    ChangeNotifierProvider(create: (_) => FolderProvider()),


        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Fyp ',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const FoldersMainScreen( ),
      ),
    );
  }
}
