import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mapmeasure_page.dart'; // อย่าลืมนำเข้าไฟล์นี้

class RestaurantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('รายละเอียดเพิ่มเติมของร้านอาหาร'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0), // เพิ่ม padding รอบ ๆ กรอบ
          decoration: BoxDecoration(
            border: Border.all(color: Colors.deepOrange, width: 2), // กรอบ
            borderRadius: BorderRadius.circular(12), // มุมมน
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/A1.jpg',
                height: 300,
                width: 600,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10), // ช่องว่างระหว่างรูปและชื่อวัด
              Text(
                'วัดพระศรีสรรเพชญ์',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold, // ตัวหนา
                  letterSpacing: 1.5, // ช่องว่างระหว่างตัวอักษร
                ),
              ),
              SizedBox(height: 10), // ช่องว่างระหว่างชื่อวัดและข้อความ
              Text(
                'ร้านอาหารริมน้ำแห่งนี้เหมาะแก่การแวะรับประทานมื้อกลางวันหลังไปไหว้พระที่วัดเชิงเลน เหล่านักชิมต่างตระเวนมาที่นี่เพื่อลิ้มลองอาหารสดใหม่ที่ดีที่สุดจากแม่น้ำ เมนูแนะนำคงไม่พ้นกุ้งแม่น้ำเผา และปลาเนื้ออ่อนทอดกรอบ อีกหนึ่งเมนูเด็ดที่พลาดไม่ได้คือแกงเขียวหวานลูกชิ้นปลากรายเลิศรส หอมกลิ่นเครื่องเทศ หากต้องการรับประทานกุ้งแม่น้ำเผาขนาดยักษ์ ที่ย่างด้วยถ่านไม้อย่างพิถีพิถัน แนะนำให้สั่งจองล่วงหน้า เพราะเป็นเมนูยอดฮิต และมีจำนวนจำกัด',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20), // ช่องว่างระหว่างข้อความและปุ่ม
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MapmeasurePage()),
                  );
                },
                child: Text(
                  'ไปที่แผนที่',
                  style: TextStyle(color: Colors.black), // เปลี่ยนสีข้อความเป็นดำ
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange, // สีพื้นหลังของปุ่ม
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
