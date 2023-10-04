
import 'package:flutter/material.dart';


class BottomNavgationBar extends StatefulWidget {
  const BottomNavgationBar({super.key});

  @override
  State<BottomNavgationBar> createState() => _BottomNavgationBarState();
}

class _BottomNavgationBarState extends State<BottomNavgationBar> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });

}
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: 80,
          child: Stack(
            clipBehavior: Clip.none, children: [
            CustomPaint(
              size: Size(size.width, 80),
              painter: BNBCustomPainter(),
            ),
            Center(
              heightFactor: 0.6,
              child: FloatingActionButton(backgroundColor: Colors.blue, elevation: 0.1, onPressed: () {}, child: const Icon(Icons.camera,size: 30,color: Colors.white,)),
            ),
            Container(
              width: size.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      size: 25,
                      color: currentIndex == 0 ? Colors.blue : Colors.grey.shade400,
                    ),
                    onPressed: () {
                      setBottomBarIndex(0);
                    },
                    splashColor: Colors.white,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.restaurant_menu,
                        size: 25,
                        color: currentIndex == 1 ? Colors.blue : Colors.grey.shade400,
                      ),
                      onPressed: () {
                        setBottomBarIndex(1);
                      }),
                  Container(
                    width: size.width * 0.20,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.bookmark,
                        size: 25,
                        color: currentIndex == 2 ? Colors.blue : Colors.grey.shade400,
                      ),
                      onPressed: () {
                        setBottomBarIndex(2);
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.settings,
                        size: 25,
                        color: currentIndex == 3 ? Colors.blue : Colors.grey.shade400,
                      ),
                      onPressed: () {
                        setBottomBarIndex(3);
                      }),
                ],
              ),
            )
          ],
          ),
        )
      ],
    );

  }
}




class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20), radius: const Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}