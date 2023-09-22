import 'package:flutter/material.dart';
import 'package:ui_fyp/res/components/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Image.asset(
                    'assets/scan.png',
                    height: 35,
                    width: 35,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: TextWidget(
                      text: 'Scaney.Z',
                      fontWeight: FontWeight.w600,
                      size: 22,
                      color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 35,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
