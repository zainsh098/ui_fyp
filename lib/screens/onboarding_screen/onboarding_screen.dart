import 'package:flutter/material.dart';
import 'package:ui_fyp/screens/Authentications/auth_gateways.dart';




import '../../res/font_styles.dart';
import '../../utils/size_config.dart';
import 'on_boarding_contents.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  int _currentPage = 0;
  List colors = const [
    Color(0xffDAD3C8),
    Color(0xdaffe5de),
    Color(0xffDCF6E6),
  ];
  List containerColors = const [
    Color(0xffead60d),
    Color(0xffc511c0),
    Color(0xff052be5),
  ];

  AnimatedContainer _buildDots({
    int? index,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
        color: containerColors [index!],
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
curve: Curves.easeInBack,
width: _currentPage == index ? 20 : 10,
);
}

@override
Widget build(BuildContext context) {
  SizeConfig().init(context);
  double width = SizeConfig.screenW!;
  double height = SizeConfig.screenH!;

  return Scaffold(
    backgroundColor: colors[_currentPage],
    body: SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              controller: _controller,
              onPageChanged: (value) => setState(() => _currentPage = value),
              itemCount: contents.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 30,),
                      Image.asset(
                        contents[i].image,
                        height: SizeConfig.blockV! * 30,
                      ),
                      const SizedBox(height: 60,),
                      Text(
                        contents[i].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: FontStyles.CarosSoftExtraBold,
                          fontWeight: FontWeight.w600,
                          fontSize: (width <= 550) ? 30 : 35,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        contents[i].desc,
                        style: const TextStyle(
                          fontFamily: FontStyles.CarosSoftLight,

                          fontSize: 18
                        ),
                        textAlign: TextAlign.center,
                      ),

                    ],
                  ),
                );
              },
            ),
          ),

          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                        (int index) => _buildDots(
                      index: index,
                    ),
                  ),
                ),
                _currentPage + 1 == contents.length
                    ? Padding(
                  padding: const EdgeInsets.all(30),
                  child: ElevatedButton(
                    onPressed: () {

                      Navigator.push(context,  MaterialPageRoute(builder: (context) =>const AuthGateWays(),));

                    },

                    child: const Text("START",style: TextStyle(
                      fontFamily: FontStyles.CarosSoftExtraBold,
                      color: Colors.white,
                      fontSize: 15,
                    ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: (width <= 550)
                          ? const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 20)
                          : EdgeInsets.symmetric(
                          horizontal: width * 0.2, vertical: 25),
                      textStyle:
                      TextStyle(fontSize: (width <= 550) ? 13 : 17),
                    ),
                  ),
                )
                    : Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          _controller.jumpToPage(2);
                        },
                        child:  Text(
                          "SKIP",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: FontStyles.CarosSoftBold,
                            fontSize: (width <= 550) ? 13 : 17,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          elevation: 0,
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontFamily: FontStyles.CarosSoftBold,
                            fontSize: (width <= 550) ? 13 : 17,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 350),
                            curve: Curves.linear,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          elevation: 0,
                          padding: (width <= 550)
                              ? const EdgeInsets.symmetric(horizontal: 20, vertical: 15) // Adjust the padding for a smaller button
                              : const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                          textStyle: TextStyle(
                            fontSize: (width <= 550) ? 13 : 17,
                          ),
                        ),
                        child: const Text(
                          "NEXT",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: FontStyles.CarosSoftBold,
                            fontSize: 15,
                          ),
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
}