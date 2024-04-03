import 'package:flutter/material.dart';
import 'package:hug_online_ui/component/change_password.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text('ลืมรหัสผ่าน'),
          // centerTitle: true,
          ),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ลืมรหัสผ่าน',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'ป้อนหมายเลขโทรศัพท์ของคุณ',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'คุณจะได้รับรหัส เพื่อสร้างรหัสผ่านใหม่',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'หมายเลขโทรศัพท์',
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.phone_android),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ChangePasswordPage()), // ไปยังหน้า change_password.dart
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                'ยืนยัน',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
