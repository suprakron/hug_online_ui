import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:hug_online_ui/pages/usecode_page.dart';

class MyCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            backgroundColor: Color(0xFF069792),
            elevation: 0,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'โค้ดของฉัน',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                color: Color(0xFFFE8900),
                width: double.infinity,
                height: 45.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 16.0),
                    Text(
                      'ทั้งหมด',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5.0),
            TabBar(
              tabs: [
                Tab(text: 'ล่าสุด'),
                Tab(text: 'ใกล้หมดอายุ'),
              ],
              indicator: ShapeDecoration(
                shape:
                    Border(bottom: BorderSide(width: 2.0, color: Colors.grey)),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  MyCouponPage(),
                  MyAllCodesPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyCouponPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UseCodePage()),
            );
          },
          child: Center(child: Image.asset('assets/images/code_1.png')),
        ),
      ],
    );
  }
}

class MyAllCodesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset('assets/images/code_2.png'),
          ),
        ],
      ),
    );
  }
}
