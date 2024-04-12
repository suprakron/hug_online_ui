import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:hug_online_ui/Component/login.dart';
import 'package:hug_online_ui/Component/signup.dart';
import 'package:hug_online_ui/shopping/cart.dart';
import 'package:hug_online_ui/Component/profile.dart';
import 'package:hug_online_ui/pages/category_page.dart';
import 'package:hug_online_ui/pages/producttype_page.dart';
import 'package:hug_online_ui/pages/notification_page.dart';
import 'package:hug_online_ui/pages/location_page.dart';

class HomePage extends StatefulWidget {
//  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  int _selectedIndex = 0;

  Widget _buildRectangleWithMargin(String imagePath, String text) {
    return Container(
      margin: EdgeInsets.fromLTRB(4.0, 0, 4.0, 0),
      width: MediaQuery.of(context).size.width * 0.40,
      height: MediaQuery.of(context).size.width * 0.55,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: ClipRect(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.width * 0.15,
                color: Colors.transparent,
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(4.0),
                  color: Colors.white.withOpacity(0.8),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Nearby Places'),
    Text('Orders'),
    Text('Notifications'),
    Text('Me'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<String> images = [
    'assets/images/banner_h1.png',
    'assets/images/banner_h2.png',
    'assets/images/banner_h3.png',
    'assets/images/banner_h4.png',
    'assets/images/banner_h5.png',
    'assets/images/banner_h6.png',
  ];

  Widget _buildIconButtonWithCircleBorder(String imagePath, String text) {
    
    return SizedBox(
      width: MediaQuery.of(context).size.width* 0.35,
      height: MediaQuery.of(context).size.height * 0.20,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.transparent, width: 2.0),
              ),
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imagePath,
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.width * 0.15,
                ),
                SizedBox(height: 3),
                Text(
                  text,
                  style: TextStyle(fontSize: 11),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          width: MediaQuery.of(context).size.width * 0.8,
          height: 35.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: [
              Icon(Icons.search),
              SizedBox(width: 8.0),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
     
     
     
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width * 0.50,
                    child: PageView.builder(
                      itemCount: 6,
                      pageSnapping: true,
                      itemBuilder: (context, pagePosition) {
                        return Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(images[pagePosition]),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 10.0, 12.0, 4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'หมวดหมู่',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFE8900),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CategoryPage()),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Text(
                                    'ทั้งหมด',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5.0, 5.0, 0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                _buildIconButtonWithCircleBorder(
                                  'assets/images/m1_homepage.png',
                                  'ยา',
                                ),
                                SizedBox(width: 2),
                                _buildIconButtonWithCircleBorder(
                                  'assets/images/m2_homepage.png',
                                  'เครื่องสำอาง',
                                ),
                                SizedBox(width: 2),
                                _buildIconButtonWithCircleBorder(
                                  'assets/images/m3_homepage.png',
                                  'อาหารเสริม',
                                ),
                                SizedBox(width: 2),
                                _buildIconButtonWithCircleBorder(
                                  'assets/images/m4_homepage.png',
                                  'อุปกรณ์ทางการแพทย์',
                                ),
                                SizedBox(width: 2),
                                _buildIconButtonWithCircleBorder(
                                  'assets/images/m5_homepage.png',
                                  'วัสดุทางการแพทย์',
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 0.05),
                        Center(
                          child: Image.asset(
                            'assets/images/code_mainpage.png',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ขายดีประจำสัปดาห์',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFE8900),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductTypePage()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              'ทั้งหมด',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.99,
                        height: MediaQuery.of(context).size.height * 0.15,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5.0, 5.0, 0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildRectangleWithMargin(
                                    'assets/images/icon1.png',
                                    'สินค้าชิ้นที่ 1'),
                                SizedBox(width: 10),
                                _buildRectangleWithMargin(
                                    'assets/images/icon1.png',
                                    'สินค้าชิ้นที่ 2'),
                                SizedBox(width: 10),
                                _buildRectangleWithMargin(
                                    'assets/images/icon1.png',
                                    'สินค้าชิ้นที่ 3'),
                                SizedBox(width: 10),
                                _buildRectangleWithMargin(
                                    'assets/images/icon1.png',
                                    'สินค้าชิ้นที่ 4'),
                                SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'สินค้าแนะนำ',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFE8900),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductTypePage()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              'ทั้งหมด',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 18,
                    height: MediaQuery.of(context).size.height * 19.8,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildRectangleWithMargin(
                                  'assets/images/icon2.png', 'สินค้าชิ้นที่ 1'),
                              SizedBox(width: 10),
                              _buildRectangleWithMargin(
                                  'assets/images/icon2.png', 'สินค้าชิ้นที่ 2'),
                              SizedBox(width: 10),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildRectangleWithMargin(
                                  'assets/images/icon2.png', 'สินค้าชิ้นที่ 3'),
                              SizedBox(width: 10),
                              _buildRectangleWithMargin(
                                  'assets/images/icon2.png', 'สินค้าชิ้นที่ 4'),
                              SizedBox(width: 10),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),



      
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            // icon: Icon(Icons.home),
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            label: 'หน้าแรก',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.location_on),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LocationPage()),
                );
              },
            ),
            label: 'สถานที่ใกล้เคียง',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage()),
                );
              },
            ),
            label: 'คำสั่งซื้อ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationPage()),
                );
              },
            ),
            label: 'แจ้งเตือน',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            label: 'ฉัน',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        backgroundColor: Colors.blue,
      ),
     
     
     
     
     
     
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.90,
        height: MediaQuery.of(context).size.width * 0.15,
        child: SpeedDial(
          icon: Icons.login,
          onPress: () {

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );

          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          backgroundColor: const Color.fromARGB(255, 31, 57, 32),
          child: Wrap(
           alignment: WrapAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo_loginmain.png',
                width: 24,
                height: 24,
              ),
              Text(
                'เข้าสู่ระบบ',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnotherCarousel({required List<AssetImage> images}) {}
}
