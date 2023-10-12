
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ui_fyp/screens/Authentications/auth_gateways.dart';
import 'package:ui_fyp/screens/Home%20Screen/home_screen.dart';


class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Settings'),
      ),
      body: Column(children: [

        StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, AsyncSnapshot<User?> snapshot) {

          if(snapshot.connectionState==ConnectionState.waiting)
            {
              return const Center(child: CircularProgressIndicator(),);



            }
              if(snapshot.hasData)
                {
                  return HomeScreen();


                }
              else
                {
                  return AuthGateWays();
                }
            },)


      ]),



    );
  }
}
