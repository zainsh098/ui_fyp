


import 'package:flutter/material.dart';
import 'package:ui_fyp/res/components/container_auth_gateways.dart';

class Utils{



  static AlertDialog buildAlertDialog(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
              child: Icon(
                Icons.warning,
                color: Colors.white,
                size: 48.0,
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            'Alert Title',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Alert Message goes here. Add your message here.',
            style: TextStyle(
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.0),
         ContainerWidgetExtended(text: 'Go Home', size: 15, color: Colors.blue, fontWeight: FontWeight.w500, color1: Colors.white, callback: () {

         },)
        ],
      ),
    );
  }

  static snackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.pinkAccent,
      duration: Duration(seconds: 10),
    ),

    );
  }




}