import 'package:flutter/material.dart';
import 'measure_page.dart';
import 'restaurant_page.dart';
import 'travel_page.dart';

class VisitorPage extends StatefulWidget {
  @override
  _VisitorPageState createState() => _VisitorPageState();
}

class _VisitorPageState extends State<VisitorPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static Widget _buildPlaceCard(BuildContext context, String title, String description, String imagePath, String pageType) {
    return Center(
      child: Container(
        width: 350,
        height: 400,
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(
                imagePath,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                    ),
                    onPressed: () {
                      if (pageType == 'measure') {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MeasurePage()));
                      } else if (pageType == 'restaurant') {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantPage()));
                      } else if (pageType == 'travel') {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TravelPage()));
                      }
                    },
                    child: Text(
                      'เพิ่มเติม',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = <Widget>[
      _buildPlaceCard(context,
          'วัดพระศรีสรรเพชญ์',
          'วัดพระศรีสรรเพชญ์ เป็นวัดโบราณที่มีความสำคัญทางประวัติศาสตร์...',
          'assets/images/wat.jpg',
          'measure'),

      _buildPlaceCard(context,
          'เรือนไทยกุ้งเผา',
          'ร้านอาหารริมน้ำแห่งนี้เหมาะแก่การแวะรับประทาน...',
          'assets/images/A1.jpg',
          'restaurant'),

      _buildPlaceCard(context,
          'Sriayuthaya Lion Park',
          'สำหรับค่าเข้าสวนสัตว์นั้น ราคาคนละ 100 บาท...',
          'assets/images/T1.jpg',
          'travel'),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Ayutthaya Tourism',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),

      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  'Natthawat Kitsaart',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                accountEmail: Text('Aum2002s@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 50, color: Colors.deepOrange),
                ),
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                ),
              ),
              ListTile(
                leading: Icon(Icons.history, color: Colors.deepOrange),
                title: Text('โบราณสถาน', style: TextStyle(color: Colors.white)),
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.restaurant, color: Colors.deepOrange),
                title: Text('ร้านอาหาร', style: TextStyle(color: Colors.white)),
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.place, color: Colors.deepOrange),
                title: Text('สถานที่ท่องเที่ยว', style: TextStyle(color: Colors.white)),
                onTap: () {
                  setState(() {
                    _selectedIndex = 2;
                    Navigator.pop(context);
                  });
                },
              ),
              Divider(),
              ListTile(
                title: Text(
                  'ออกจากระบบ',
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                leading: Icon(Icons.exit_to_app, color: Colors.red),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                },
              ),
            ],
          ),
        ),
      ),

      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'โบราณสถาน'),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'ร้านอาหาร'),
          BottomNavigationBarItem(icon: Icon(Icons.place), label: 'สถานที่ท่องเที่ยว'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
