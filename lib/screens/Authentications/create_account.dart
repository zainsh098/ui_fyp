import 'package:flutter/material.dart';
import 'package:ui_fyp/res/components/text_form_field.dart';
import 'package:ui_fyp/res/components/text_widget.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Icon(Icons.arrow_back,size: 25,),
              ),

              SizedBox(height: 20,),
              
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextWidget(text: 'Create an account', fontWeight: FontWeight.w600,
                      size: 23, color: Colors.black),
                ),
                SizedBox(width: 5,),
                Image.asset('assets/padlock.png',height: 25,)
                
              ],),
            
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextWidget(
                    text: 'Enter your name,email & password. If you forget it,\nthen you have to do forgot password', fontWeight: FontWeight.w500,
                    size: 12, color: Colors.black),
              ),
              SizedBox(height: 30,),
              TextFormWidget(hintText: 'Email',label: 'Email',),
              SizedBox(height: 15,),
              TextFormWidget2(hintText: 'Password',label: 'Password', icon: Icon(Icons.remove_red_eye,color: Colors.blue,),),
              SizedBox(height: 10,),
              TextFormWidget2(hintText: 'Confirm Password',label: ' Confirm Password', icon: Icon(Icons.remove_red_eye,color: Colors.blue,),),
              SizedBox(height: 10,),
             



            ],


          ),
        ),
      ),


    );
  }
}
