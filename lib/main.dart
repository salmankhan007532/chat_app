import 'package:chat_app/src/ui/contact_screen.dart';
import 'package:chat_app/src/ui/numberVerification.dart';
import 'package:chat_app/src/ui/personal_chat_screen.dart';
import 'package:chat_app/src/ui/walkthrough.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: Size(400, 800),
      builder: (context,child){
        return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  ChatScreen(),
    );
      });
  }
}

