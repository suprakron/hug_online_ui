import 'package:flutter/material.dart';
import 'package:hug_online_ui/Component/login.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/icon_login.png',
                    width: 70,
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'ลงทะเบียน',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'ชื่อ*',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'นามสกุล*',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'เพศ*',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'วันเกิด*',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'อีเมล*',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'เบอร์มือถือ*',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'รหัสผ่าน*',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'ยืนยันรหัสผ่าน*',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'สาขา*',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                Text(
                    'การเลือกสิ่งนี้และลงทะเบียนแสดงว่าคุณยอมรับข้อกำหนดและนโยบายของเรา'),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Center(
                  child: Text('ลงทะเบียน'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'มีบัญชีอยู่แล้ว ?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text(
                    'เข้าสู่ระบบ',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 243, 152, 33)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
