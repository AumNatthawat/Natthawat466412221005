import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mapmeasure_page.dart'; // อย่าลืมนำเข้าไฟล์นี้

class MeasurePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('รายละเอียดเพิ่มเติมของโบราณสถาน'),
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
                'assets/images/wat.jpg',
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
                'เป็นวัดสำคัญที่สร้างอยู่ในพระราชวังหลวงเทียบได้กับวัดพระศรีรัตนศาสดารามแห่งกรุงเทพมหานครหรือวัดมหาธาตุแห่งกรุงสุโขทัย ในสมัยสมเด็จพระรามาธิบดีที่ 1 (พระเจ้าอู่ทอง) ทรงสร้างพระราชมณเฑียรเป็นที่ประทับที่บริเวณนี้ ต่อมาสมเด็จพระบรมไตรโลกนาถทรงย้ายพระราชวังขึ้นไปทางเหนือและอุทิศที่ดินเดิมให้สร้างวัดขึ้นภายในเขตพระราชวังและโปรดเกล้าฯให้สร้างเขตพุทธาวาสขึ้น เพื่อเป็นที่สำหรับประกอบพิธีสำคัญต่างๆ จึงเป็นวัดที่ไม่มีพระสงฆ์จำพรรษา ต่อมาในสมัยสมเด็จพระรามาธิบดีที่ 2 โปรดเกล้าฯ ให้สร้างพระสถูปเจดีย์ใหญ่สององค์เมื่อ พ.ศ.2035 องค์แรกทางทิศตะวันออกเพื่อบรรจุพระบรมอัฐิของสมเด็จพระบรมไตรโลกนาถพระราชบิดาและองค์ที่สองคือองค์กลางเพื่อบรรจุพระบรมอัฐิของสมเด็จพระบรมราชาธิราชที่ 3 พระบรมเชษฐา ต่อมาในปี พ.ศ. 2042 ทรงสร้างพระวิหารขนาดใหญ่และในปี  พ.ศ.2043 ทรงหล่อพระพุทธรูปยืนสูง 8 วา (16 เมตร) หุ้มด้วยทองคำหนัก 286 ชั่ง (ประมาณ 171 กิโลกรัม) ประดิษฐานไว้ในวิหาร พระนามว่า “พระศรีสรรเพชญดาญาณ”',
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
