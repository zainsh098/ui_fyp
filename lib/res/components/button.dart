import 'package:flutter/material.dart';




class ButtonWidget extends StatelessWidget {
  final String textmessage;
  bool _isLoading=false;
  VoidCallback onTap;
  ButtonWidget({required this.textmessage, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 310,
        height: 60,

        decoration:  BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(15)),
        child:_isLoading
            ? const CircularProgressIndicator()
            :  Center(child: Text(textmessage, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),),
      ),
    );
  }
}