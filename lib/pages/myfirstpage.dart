

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
      body: Column(
        children: [
          Text("ดุลยวัต", style: TextStyle(fontSize: 22),),
          Text("วัตนะเสณร์",style: TextStyle(fontSize: 22),), 
        ],
      ),
    );
  }
}