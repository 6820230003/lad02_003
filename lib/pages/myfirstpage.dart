import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    // const IconData cardIcon = Icons.info; // ไม่ได้ใช้แล้ว สามารถลบออกได้

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
            // ส่วนแสดงรูปโปรไฟล์และข้อมูลส่วนตัว
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 30.0), 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 70,
                    // ตรวจสอบพาธของรูปภาพให้ถูกต้อง (สมมติว่า chin/small.jpg อยู่ใน assets และมีการกำหนดใน pubspec.yaml)
                    backgroundImage: AssetImage("chin/small.jpg"), 
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
            
            // Card สำหรับข้อมูลติดต่อ (ที่อยู่, โทรศัพท์, อีเมล)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.house ,color: Color.fromARGB(255, 243, 33, 121), size: 20),
                          const SizedBox(width: 8),
                          const Text("ที่อยู่   ควนขนุน พัทลุง", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      const SizedBox(height: 12), 

                      Row(
                        children: [
                          const Icon(Icons.phone, color: Color.fromARGB(255, 11, 219, 140), size: 20),
                          const SizedBox(width: 8),
                          const Text("เบอร์โทรศัพท์   0123456789", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      const SizedBox(height: 12), 

                      Row(
                        children: [
                          const Icon(Icons.email, color: Colors.blue, size: 20),
                          const SizedBox(width: 8),
                          const Text("อีเมล์   6820230003@tsu.ac.th", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      
                      const Divider(height: 16), 

                      // ส่วนที่เพิ่มใหม่: ปุ่ม "คติประจำใจ"
                      _buildClickableCard(
                        context: context,
                        icon: Icons.lightbulb_outline, // ไอคอนสำหรับคติประจำใจ
                        iconColor: Colors.amber,
                        text: "คติประจำใจ: เรียนรู้ตลอดชีวิต",
                        onTap: () {
                          // แสดงข้อความเมื่อกดปุ่ม
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('คุณกดปุ่ม คติประจำใจ')),
                          );
                        },
                      ),
                      const SizedBox(height: 12),

                      // ส่วนที่เพิ่มใหม่: ปุ่ม "วันเดือนปีเกิด"
                      _buildClickableCard(
                        context: context,
                        icon: Icons.calendar_today, // ไอคอนสำหรับวันเดือนปีเกิด
                        iconColor: Colors.purple,
                        text: "วันเดือนปีเกิด: 1 มกราคม 2547",
                        onTap: () {
                          // แสดงข้อความเมื่อกดปุ่ม
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('คุณกดปุ่ม วันเดือนปีเกิด')),
                          );
                        },
                      ),
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

  // Widget Helper สำหรับสร้างปุ่มแบบ Card ที่สามารถคลิกได้
  Widget _buildClickableCard({
    required BuildContext context,
    required IconData icon,
    required Color iconColor,
    required String text,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: EdgeInsets.zero, // ลบ margin ภายนอก Card
      elevation: 2,
      child: InkWell( // ทำให้ Card สามารถคลิกได้
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Icon(icon, color: iconColor, size: 20),
              const SizedBox(width: 8),
              Expanded( // ใช้ Expanded เพื่อให้ Text ครอบคลุมพื้นที่ที่เหลือ
                child: Text(
                  text, 
                  style: const TextStyle(fontSize: 16),
                  overflow: TextOverflow.ellipsis, // หากข้อความยาวเกินไปให้แสดง ...
                ),
              ),
              const Icon(Icons.chevron_right, color: Colors.grey), // เพิ่มไอคอนลูกศรด้านขวาเพื่อบ่งชี้ว่าสามารถกดได้
            ],
          ),
        ),
      ),
    );
  }
}