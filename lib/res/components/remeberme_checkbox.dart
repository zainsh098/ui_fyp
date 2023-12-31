import 'package:flutter/material.dart';


import '../font_styles.dart';


class CheckBoxRememberMe extends StatefulWidget {
  const CheckBoxRememberMe({super.key});

  @override
  State<CheckBoxRememberMe> createState() => _CheckBoxRememberMeState();
}

class _CheckBoxRememberMeState extends State<CheckBoxRememberMe> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
            activeColor: Colors.blue, // Set the color to blue
          ),
        ),
        Text(
          'Remember Me',
          style: TextStyle(fontFamily: FontStyles.CarosSoftMedium,fontSize: 12)
        ),
      ],
    );
  }
}