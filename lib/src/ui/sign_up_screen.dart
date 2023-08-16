
import 'package:chat_app/src/ui/other/home_screen.dart';
import 'package:chat_app/src/ui/signin_screen.dart';
import 'package:chat_app/src/ui/widget/customButton.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  GlobalKey formkey = GlobalKey();

  Future createUser()async{
    if(formkey.currentState != null){
      _auth.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value){

        _firestore.collection("User").doc(_auth.currentUser!.uid).set({
          "name" : nameController.text,
          "email": emailController.text,
          "statuse" : "unavilable"
        });
        print("user is created");
        Get.to(HomeScreen());
      });
    }else{
      print("user not created");
    }
  }

  
  
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20.sp,),
              Container(
                  height: 300.sp,
                  width: 400.sp,
                  decoration: BoxDecoration(
                    color: Colors.amber[200],
                    image:const DecorationImage(image: 
                    AssetImage('assets/images/signin1.png'),fit: BoxFit.cover),
                  ),
                ),
                SizedBox(height: 10.sp,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 25.sp),
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: 'Enter Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                          ),
                          
                        ),
                        ),
                        
                        SizedBox(height: 10.sp,),
                        
                        TextFormField(
                          controller: emailController,
                        decoration: InputDecoration(
                          hintText: 'Enter Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                          ),
                          
                        ),
                        keyboardType: TextInputType.emailAddress,
                        ),
                        
                        SizedBox(height: 10.sp,),
                        
                        TextFormField(
                         controller: passwordController,
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                          ),
                          
                        ),
                        ),
                    ],
                  ),
                ),
              ),
               SizedBox(height: 50.sp,),
              CustomButton(text: 'Sign Up',
               ontap: (){
                createUser();
               
              }),

              SizedBox(height: 10.sp,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("I hace alrady in Account?"),
                TextButton(
                  onPressed: (){
                    Get.to(SignInScreen());
                  },
                 child:const Text("Sign In",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),))
              ],
             )
            ],
          ),
        ),
      ),
    );
  }
}