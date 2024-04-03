import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override

 


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หมวดหมู่'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 450.0, // กำหนดความกว้างของแถบเมนูด้านซ้าย
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildMenuItem('รายการ 1', Icons.category),
                  buildMenuItem('รายการ 2', Icons.category),
                  buildMenuItem('รายการ 3', Icons.category),
                  buildMenuItem('รายการ 4', Icons.category),
                  buildMenuItem('รายการ 5', Icons.category),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildMenuItem('รายการ 1', Icons.category),
                  buildMenuItem('รายการ 2', Icons.category),
                  buildMenuItem('รายการ 3', Icons.category),
                  buildMenuItem('รายการ 4', Icons.category),
                  buildMenuItem('รายการ 5', Icons.category),
                  buildMenuItem('รายการ 6', Icons.category),
                  buildMenuItem('รายการ 7', Icons.category),
                  buildMenuItem('รายการ 8', Icons.category),
                  buildMenuItem('รายการ 9', Icons.category),
                  buildMenuItem('รายการ 10', Icons.category),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(String title, IconData icon) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 10.0),
          Text(title),
        ],
      ),
    );
  }
}
