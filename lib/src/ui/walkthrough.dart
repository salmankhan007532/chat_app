
import 'package:chat_app/src/ui/numberVerification.dart';
import 'package:chat_app/src/ui/widget/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
         // title: Text('Chat'),
        ),
        body: Column(
          children: [
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
              SizedBox(
              height: 190.sp,
              width: 210.sp,
              child:const Column(
                children: [
                   Text("""  Connect easily with""",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text("""  your family and friends""",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text("""   over countries""",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ],
              )),
              
              const Text("Terms & Privacy Policy",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
            SizedBox(height: 8.sp,),
           CustomButton(
            text: "Start Messaging",
            ontap: (){
              Get.to(NumberValidationScreen());
            },
           ),
          ],
        )
      ),
    );
  }
}