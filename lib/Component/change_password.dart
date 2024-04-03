import 'package:flutter/material.dart';

class ChangePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เปลี่ยนรหัสผ่าน'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0), // ระยะห่างด้านบน 10 เซนติเมตร
              child: Center(
                child: Text(
                  'เปลี่ยนรหัสผ่านใหม่ของคุณ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, // กำหนดตัวหนา
                    fontSize: 30, // กำหนดขนาดตัวอักษร
                    color: Colors.black, // กำหนดสีข้อความ
                  ),
                ),
              ),
            ),SizedBox(height: 30.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'รหัสผ่านใหม่',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'ยืนยันรหัสผ่านใหม่',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('เปลี่ยนรหัสผ่าน'),
            ),
          ],
        ),
      ),
    );
  }
}
