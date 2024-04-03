import 'package:flutter/material.dart';

class MyCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,  
      child: Scaffold(
        appBar: AppBar(
          title: Text('โค้ดของฉัน'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'คูปองของฉัน'),  
              Tab(text: 'โค้ดทั้งหมด'),  
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MyCouponPage(),
            MyAllCodesPage(),
          ],
        ),
      ),
    );
  }
}

class MyCouponPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('หน้าคูปองของฉัน'),
    );
  }
}

class MyAllCodesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('หน้าโค้ดทั้งหมด'),
    );
  }
}
