
import 'package:flutter/material.dart';
import 'package:ui_fyp/screens/Home%20Screen/home_screen.dart';


import '../../res/components/container_auth_gateways.dart';
import '../../res/components/remeberme_checkbox.dart';
import '../../res/components/text_form_field.dart';
import '../../res/components/text_widget.dart';


class AccountLogin extends StatelessWidget {
  const AccountLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  child: TextWidget(text: 'Hello There', fontWeight: FontWeight.w600,
                      size: 30, color: Colors.black),
                ),
                const SizedBox(width: 5,),
                Image.asset('assets/hello.png',height: 30,)

              ],),

              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextWidget(
                    text: 'Please enter your email & password to sign in', fontWeight: FontWeight.w500,
                    size: 12, color: Colors.black),
              ),
              const SizedBox(height: 30,),
              const TextFormWidget(hintText: 'Email',label: 'Email',),
              const SizedBox(height: 15,),
              const TextFormWidget2(hintText: 'Password',label: 'Password', icon: Icon(Icons.remove_red_eye,color: Colors.blue,),),
              const SizedBox(height: 10,),

              const CheckBoxRememberMe(),
              Divider(
                color: Colors.grey.shade300,
                indent: 20,endIndent: 20,

              ),
              SizedBox(height: 25,),
              Center(

                child: Column(


                  children: [

                    TextWidget(text: 'Forgot Password', fontWeight: FontWeight.w600, size: 15, color: Colors.blue),
                    SizedBox(height: 20,),

                    TextWidget(text: 'or continue with', fontWeight: FontWeight.w500, size: 12, color: Colors.grey),




                  ],

                ),

              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    LoginPageContainer(image: 'assets/google.png', color: Colors.white, callback: () {

                    }, logowidth: 22, logoheight: 22),
                    LoginPageContainer(image: 'assets/apple.png', color: Colors.white, callback: () {

                    }, logowidth: 22, logoheight: 22),
                    LoginPageContainer(image: 'assets/facebook.png', color: Colors.white, callback: () {

                    }, logowidth: 22, logoheight: 22)


                  ],


                ),
              ),
              
              

              const SizedBox(height: 70,),
              ContainerWidgetExtended(
                text: 'Signin',
                size: 18,
                color: Colors.blue,
                fontWeight: FontWeight.w600,
                color1: Colors.white,
                callback: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));

                },
              )



            ],


          ),
        ),
      ),


    );
  }
}
