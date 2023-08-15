

import 'package:firebase_auth/firebase_auth.dart';

Future<User?> createAccount(String name, String email, String passowerd) async{
  FirebaseAuth _auth =FirebaseAuth.instance;

  try{
    User? user1 = (await _auth.createUserWithEmailAndPassword(email: email, password: passowerd)).user;

    if(user1 != null){
      print("Account created successfuly");
      return user1;
    }else{
      print("Account creation failed");
     // return user1;
    }

  }catch(e){
    print(e.toString());
  }
}