
import 'package:chat_app/src/ui/widget/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NumberValidationScreen extends StatefulWidget {
  const NumberValidationScreen({super.key});

  @override
  State<NumberValidationScreen> createState() => _NumberValidationScreenState();
}

class _NumberValidationScreenState extends State<NumberValidationScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:  SizedBox(
                height: 190.sp,
                width: 210.sp,
                child:const Column(
                  children: [
                     Text("""Enter Your Phone Number""",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("""Please confirm your country code and enter""",style: TextStyle(fontSize: 10,),),
                    Text("""your phone number""",style: TextStyle(fontSize: 8,),),
                  ],
                )),
            ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25.sp),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                  
                ),
                keyboardType: TextInputType.number,
            
              ),
            ),
             SizedBox(height: 50.sp,),
            CustomButton(text: 'Continue',
             ontap: (){
             
            }),
          ],
        ),
      ),
    );
  }
}