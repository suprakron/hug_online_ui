import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hug_online_ui/Component/editprofile_page.dart';
import 'package:hug_online_ui/pages/home_page.dart';
import 'package:hug_online_ui/pages/my_order.dart';
import 'package:hug_online_ui/pages/favorite_products.dart';
import 'package:hug_online_ui/pages/mycode_page.dart';
import 'package:hug_online_ui/pages/myaddress_page.dart';
import 'package:hug_online_ui/pages/refer_friend.dart';
import 'package:hug_online_ui/Component/change_password.dart';
import 'package:hug_online_ui/pages/question_page.dart';

import 'package:hug_online_ui/shopping/cart.dart';
import 'package:hug_online_ui/Component/profile.dart';
import 'package:hug_online_ui/pages/category_page.dart';
import 'package:hug_online_ui/pages/producttype_page.dart';
import 'package:hug_online_ui/pages/notification_page.dart';
import 'package:hug_online_ui/pages/location_page.dart';

class ProfilePage extends StatelessWidget {
  int _selectedIndex = 4; // Set the initial selected index here

  void _onItemTapped(int index) {
    // Handle bottom navigation item tap here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('โปรไฟล์'),
        backgroundColor: Color(0xFF069792),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Container(
              color: Color(0xFF069792),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'โปรไฟล์',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4.0),
                            CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/images/Icon_Profile.png'),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0, top: 25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ชื่อผู้ใช้งาน',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                '555555',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfilePage()),
                          );
                        },
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 25, 25, 25),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'แก้ไข',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 226, 233, 238),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2), // ระยะห่างระหว่าง Row แรกกับ Row ที่สอง
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyOrderPage()),
                );
              },
              leading: Icon(Icons.shopping_cart),
              title: Text('คำสั่งซื้อของฉัน'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FavoriteProductsPage()),
                );
              },
              leading: Icon(Icons.favorite),
              title: Text('สินค้าที่ถูกใจ'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyCodePage()),
                );
              },
              leading: Icon(Icons.local_offer_outlined),
              title: Text('โค้ดส่วนลดของฉัน'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyAddressPage()),
                );
              },
              leading: Icon(Icons.location_on),
              title: Text('ที่อยู่ของฉัน'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReferFriendPage()),
                );
              },
              leading: Icon(Icons.people_alt),
              title: Text('แนะนำเพื่อน'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChangePasswordPage()),
                );
              },
              leading: Icon(Icons.vpn_key),
              title: Text('เปลี่ยนรหัสผ่าน'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuestionPage()),
                );
              },
              leading: Icon(Icons.help_center_sharp),
              title: Text('คำถามที่พบบ่อย'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              leading: Icon(Icons.logout),
              title: Text('ออกจากระบบ'),
            ),
          ),
          SizedBox(height: 10.0),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/bg_menuprofile.png',
              width: double.infinity,
              height: 110,
              fit: BoxFit.cover,
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
    );
  }
}
