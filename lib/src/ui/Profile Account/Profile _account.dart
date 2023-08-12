import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ProfileAccount extends StatefulWidget {
  const ProfileAccount({super.key});

  @override
  State<ProfileAccount> createState() => _ProfileAccountState();
}

class _ProfileAccountState extends State<ProfileAccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 120.sp,
              width: 200.sp,
              child:const Image(
                image: AssetImage('assets/images/profileIcon.png'),fit: BoxFit.cover,
              
              ),
            )
          ],
        ),
      ),
    );
  }
}