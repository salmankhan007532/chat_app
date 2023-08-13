import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const  Text("Contact",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    IconButton(
                      onPressed: (){}, 
                    icon:const Icon(Icons.add,size: 25,)),
                  
                  ],
                ),
              ),
        
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search contact',
                  prefixIcon:const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index){
                    return  Card(
                      child: ListTile(
                        leading: Container(
                          height: 70.sp,
                          width: 70.sp,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(15),
                           // image: DecorationImage(image: AssetImage("assets/images/profileIcon.png"),fit: BoxFit.cover)
                          ),
                        ),
                        title:const Text("tiltle"),
                        subtitle:const Text("subtitle"),
                        
                      ),
                    );
                  }) 
                )
        
            ],
          ),
        ),
      ),
    );
  }
}