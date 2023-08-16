
import 'package:chat_app/src/ui/other/home_screen.dart';
import 'package:chat_app/src/ui/sign_up_screen.dart';
import 'package:chat_app/src/ui/widget/customButton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen>{
  
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  GlobalKey formkey = GlobalKey();

  Future signinUser()async{
    if(formkey.currentState != null){
      _auth.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value){
        print("user is created");
        Get.to(HomeScreen());
      });
    }else{
      print("user not created");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.sp,), 
              Container(
                height: 300.sp,
                width: 400.sp,
                decoration: BoxDecoration(
                  color: Colors.amber[200],
                  image:const DecorationImage(image: 
                  AssetImage('assets/images/signin1.png'),fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 12,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Form(
                    key:formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: 'Enter Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                            ),
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
                                  
                          SizedBox(height: 30.sp,),
                      ],
                    ),
                  ),
                ),
                
                const Text("Terms & Privacy Policy",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
              SizedBox(height: 15.sp,),
             CustomButton(
              text: "Sign In",
              ontap: (){
                signinUser();
              },
             ),
             SizedBox(height: 10.sp,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Create your Account?"),
                TextButton(
                  onPressed: (){
                    Get.to(SignUpScreen());
                  },
                 child:const Text("Sign Up",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),))
              ],
             )
            ],
          ),
        )
      ),
    );
  }
}