

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class  Google_AuthService{


final FirebaseAuth _auth=FirebaseAuth.instance;
final GoogleSignIn _googleSignIn=GoogleSignIn();

Future<void > handleSignin()
async {

  try{GoogleSignInAccount? googleUser=await _googleSignIn.signIn();
    if(googleUser !=null)
      {
      GoogleSignInAuthentication googleSignInAuthentication=await googleUser.authentication;
      AuthCredential credential=  GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,


        );
        await _auth.signInWithCredential(credential);
      }


}
catch(e){
   print(e.toString());



}
}



}