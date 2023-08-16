import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var isloading =false;
  final TextEditingController _search = TextEditingController();

  void onSerch() async{
    FirebaseFirestore _firestore = FirebaseFirestore.instance;

  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Home page"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        child: isloading ? Center(
          child: SizedBox(
            height: 100.sp,
            width: 150.sp,
            child:const CircularProgressIndicator(),),):
             Column(
          children: [
            SizedBox(height: 20.sp,),
      
            Container(
              height: 50.sp,
              width: 400.sp,
              alignment: Alignment.center,
              child: Container(
                height: 50.sp,
                width: 400.sp,
                child: TextFormField(
                  controller: _search,
                  decoration: InputDecoration(
                    hintText: 'search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
      
            SizedBox(height: 10.sp,),
      
            ElevatedButton(
              onPressed: (){},
              child:const Text("Search")),
          ],
        ),
      ),
    );
  }
}