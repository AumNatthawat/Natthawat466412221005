import 'package:flutter/material.dart';
import 'mapmeasure_page.dart';

class TravelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('รายละเอียดเพิ่มเติมของสถานที่ท่องเที่ยว'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.deepOrange, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/T1.jpg',
                height: 300,
                width: 600,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Text(
                'Sriayuthaya Lion Park',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '     ใครที่มองหา ที่เที่ยวใกล้กรุงเทพ เช้าไปเย็นกลับ ไปชิงไปเที่ยวกันได้ทั้งครอบครัว เราขอแนะนำให้หาเวลามาชิลกับ ที่เที่ยวเปิดใหม่ อยุธยา กันที่ Sriayuthaya Lion Park ศรีอยุธยา ไลอ้อน ปาร์ค ค่ะ เป็นสวนสัตว์ที่บรรยากาศดี พื้นที่กว้างขวาง มีมุมถ่ายรูปทั่วไปหมดทั้งพื้นที่ อีกทั้งยังให้เราได้ใกล้ชิดสุดๆ กับสัตว์นานาชนิดอีกด้วย งานนี้ เด็กๆ น้องๆ หนูๆ ต้องประทับใจมากๆ เลยทีเดียว',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MapmeasurePage()),
                  );
                },
                child: Text('ไปที่แผนที่'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
