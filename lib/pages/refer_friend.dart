import 'package:flutter/material.dart';

class ReferFriendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('แนะนำเพื่อน'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'แนะนำเพื่อนให้รับสิทธิพิเศษ',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            // เพิ่มเนื้อหาของหน้าแนะนำเพื่อนตามต้องการ
          ],
        ),
      ),
    );
  }
}
