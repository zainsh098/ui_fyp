import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:ui_fyp/provider/folder_provider.dart';

import 'package:ui_fyp/provider/splash_provider.dart';
import 'package:ui_fyp/screens/Folders/folders_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final initialPath = (await getExternalStorageDirectory())?.path;
  runApp(MyApp(folderPath: initialPath));

}

class MyApp extends StatelessWidget {
  final String? folderPath;
  const MyApp({super.key,required this.folderPath});

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
        home: FoldersMainScreen(folderPath:folderPath ),
      ),
    );
  }
}
