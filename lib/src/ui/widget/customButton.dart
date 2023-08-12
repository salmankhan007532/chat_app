
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key,required this.text, required this.ontap});
var text;
var ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.blue[300],
        borderRadius: BorderRadius.circular(10),

      ),
      child: Center(
        child: Text("$text",style: TextStyle(color: Colors.white,fontSize: 18),),
      ),
    );
  }
}