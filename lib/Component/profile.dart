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

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('โปรไฟล์'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/Icon_Profile.png'),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ชื่อผู้ใช้งาน',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfilePage()),
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
          SizedBox(height: 20),
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
              leading: Icon(Icons.help_outline),
              title: Text('คำถามที่พบบ่อย'),
            ),
          ),
          SizedBox(height: 210),
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo_profile.png',
                    width: 200,
                    height: 110,
                  ),
                  Text(
                    'Version',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
