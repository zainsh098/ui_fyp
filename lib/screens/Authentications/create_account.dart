import 'package:flutter/material.dart';
import 'package:ui_fyp/res/components/container_auth_gateways.dart';
import 'package:ui_fyp/res/components/remeberme_checkbox.dart';
import 'package:ui_fyp/res/components/text_form_field.dart';
import 'package:ui_fyp/res/components/text_widget.dart';

import '../../utils/utils.dart';

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

              const SizedBox(height: 20,),
               Padding(
                padding: EdgeInsets.only(left: 12),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                    child: Icon(Icons.arrow_back,size: 25,)),
              ),

              const SizedBox(height: 20,),

              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextWidget(text: 'Create an account', fontWeight: FontWeight.w600,
                      size: 23, color: Colors.black),
                ),
                const SizedBox(width: 5,),
                Image.asset('assets/padlock.png',height: 25,)

              ],),

              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextWidget(
                    text: 'Enter your name,email & password. If you forget it,\nthen you have to do forgot password', fontWeight: FontWeight.w500,
                    size: 12, color: Colors.black),
              ),
              const SizedBox(height: 30,),
              const TextFormWidget(hintText: 'Email',label: 'Email',),
              const SizedBox(height: 15,),
              const TextFormWidget2(hintText: 'Password',label: 'Password', icon: Icon(Icons.remove_red_eye,color: Colors.blue,),),
              const SizedBox(height: 10,),
              const TextFormWidget2(hintText: 'Confirm Password',label: ' Confirm Password', icon: Icon(Icons.remove_red_eye,color: Colors.blue,),),
              const SizedBox(height: 10,),
             const CheckBoxRememberMe(),

              const SizedBox(height: 180,),
              ContainerWidgetExtended(
                text: 'Signup',
                size: 18,
                color: Colors.blue,
                fontWeight: FontWeight.w400,
                color1: Colors.white,
                callback: () {

                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Utils.buildAlertDialog(context);
                    },
                  );
                },
              )



            ],


          ),
        ),
      ),


    );
  }
}
