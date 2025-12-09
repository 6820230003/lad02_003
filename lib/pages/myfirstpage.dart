import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    const IconData cardIcon = Icons.info; 
    
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: const Text("My Profile"),
        backgroundColor: const Color.fromARGB(255, 64, 226, 255),
      ),
      
      body: SingleChildScrollView( 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, 
          
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 30.0), 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: const AssetImage("chin/small.jpg"),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ดุลยวัต", style: TextStyle(fontSize: 22, color: const Color.fromARGB(255, 64, 255, 214)),),
                      Text("วัตนะเสณร์", style: TextStyle(fontSize: 22, color: const Color.fromARGB(255, 64, 255, 74)),), 
                      Text("6820230003", style: TextStyle(fontSize: 22, color: const Color.fromARGB(255, 115, 64, 255)),),
                      Text("6820230003@tsu.ac.th", style: TextStyle(fontSize: 22, color: const Color.fromARGB(255, 255, 64, 239)),),
                    ],
                  ),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start, 
                        children: [

                          Row(
                            children: [
                              const Icon(Icons.house ,color: Color.fromARGB(255, 243, 33, 121), size: 20),
                              const SizedBox(width: 8),
                              const Text("ที่อยู่   ควนขนุน พัทลุง", style: TextStyle(fontSize: 16)),
                            ],
                          ),
                          const SizedBox(height: 12), 

                          Row(
                            children: [
                              const Icon(Icons.phone, color: Color.fromARGB(255, 11, 219, 140), size: 20),
                              const SizedBox(width: 8),
                              const Text("เบอร์โทรศัพท์   0123456789", style: TextStyle(fontSize: 16)),
                            ],
                          ),
                          const SizedBox(height: 12), 

                          Row(
                            children: [
                              const Icon(Icons.email, color: Colors.blue, size: 20),
                              const SizedBox(width: 8),
                              const Text("อีเมล์   6820230003@tsu.ac.th", style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ],
                      ),
                      
                      const Divider(height: 16), 


                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}