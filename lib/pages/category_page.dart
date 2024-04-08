import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget buildMenuItemWithImage(String title, String imagePath) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(0),
      ),
      child: Row(
        children: [
          Image.asset(imagePath, width: 30, height: 30),
          SizedBox(width: 5),
          Text(title),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'หมวดหมู่',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF069792),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 250.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildMenuItemWithImage(
                      'รายการ 1', 'assets/images/m1_homepage.png'),
                  buildMenuItemWithImage(
                      'รายการ 2', 'assets/images/m2_homepage.png'),
                  buildMenuItemWithImage(
                      'รายการ 3', 'assets/images/m3_homepage.png'),
                  buildMenuItemWithImage(
                      'รายการ 4', 'assets/images/m4_homepage.png'),
                  buildMenuItemWithImage(
                      'รายการ 5', 'assets/images/m5_homepage.png'),
                  buildMenuItemWithImage(
                      'รายการ 6', 'assets/images/m6_homepage.png'),
                ],
              ),
            ),
            Container(
        
              width: MediaQuery.of(context).size.width -
                  250,  
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Color.fromARGB(255, 105, 158, 223),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          buildMenuItem('รายการ 1'),
                          buildMenuItem('รายการ 2'),
                          buildMenuItem('รายการ 3'),
                          buildMenuItem('รายการ 4'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(
    String title,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(0),
      ),
      child: Row(
        children: [
          SizedBox(width: 10.0),
          Text(title),
        ],
      ),
    );
  }
}
