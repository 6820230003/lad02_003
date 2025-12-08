

import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor: const Color.fromARGB(255, 64, 226, 255),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("chin/small.jpg"),
            ),
            Text("ดุลยวัต", style: TextStyle(fontSize: 22,color:Color.fromARGB(255, 64, 255, 214)),),
            Text("วัตนะเสณร์",style: TextStyle(fontSize: 22,color:const Color.fromARGB(255, 64, 255, 74)),), 
            Text("6820230003", style: TextStyle(fontSize: 22,color:const Color.fromARGB(255, 115, 64, 255)),),
            Text("6820230003@tsu.ac.th",style: TextStyle(fontSize: 22,color:const Color.fromARGB(255, 255, 64, 239)),),
          ],
        ),
      ),
    );
  }
}