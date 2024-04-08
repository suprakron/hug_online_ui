import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'คำถามที่พบบ่อย',
          style: TextStyle(
              color: Color.fromARGB(255, 239, 233, 233),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF069792),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Card(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/icon1_q.png',
                                    width: 100,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'ฉันจะเริ่มต้นใช้งาน HUG ONLINE อย่างไร?',
                                    style: TextStyle(fontSize: 12),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Card(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/icon2_q.png',
                                    width: 100,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'อยากปรึกษา เภสัชกร ต้องทำอย่างไร?',
                                    style: TextStyle(fontSize: 12),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Card(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/icon3_q.png',
                                    width: 100,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'โควต้าเช็คราคาฟรี 20 ครั้ง หมด! ต้องทำอย่างไร ? ถึงจะกลับมาใช้งานได้เหมือนเดิม',
                                    style: TextStyle(fontSize: 12),textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Card(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/icon4_q.png',
                                    width: 100,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'เลือกรับสินค้า ที่สาขา หรือจัดส่งตามที่อยุ่ ต้องทำอย่างไร',
                                    style: TextStyle(fontSize: 12),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Card(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/icon5_q.png',
                                    width: 100,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'ฉันจะค้นหาชื่อสินค้าจากหมวดหมู่ อย่างไร?',
                                    style: TextStyle(fontSize: 12),textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Card(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/icon6_q.png',
                                    width: 100,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'ฉันจะทำการสั่งซื้อสินค้าได้อย่างไร?',
                                    style: TextStyle(fontSize: 12),textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Card(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/icon7_q.png',
                                    width: 100,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'ฉันจะทำการชำระเงินได้อย่างไร?',
                                    style: TextStyle(fontSize: 12),textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Card(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/icon8_q.png',
                                    width: 100,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'ฉันจะทำการตรวจสอบสถานะสินค้าของฉันได้อย่างไร?',
                                    style: TextStyle(fontSize: 12),textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Card(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/icon9_q.png',
                                    width: 100,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'ฉันจะใช้คูปองส่วนลดได้อย่างไร?',
                                    style: TextStyle(fontSize: 12),textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.all(16),
          color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'ติดต่อเราได้ที่.',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(0),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Wrap(
                              children: [
                                Icon(
                                  Icons.chat_bubble_outline,
                                  color: Colors.green,
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Line ID',
                                      style: TextStyle(color: Colors.black,fontSize: 12),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '@healthupgroup',
                                      style: TextStyle(color: Colors.black,fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(0),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Wrap(
                              children: [
                                Icon(
                                  Icons.language,
                                  color: Colors.green,
                                ),
                                SizedBox(width: 10),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'เว็ปไซต์',
                                      style: TextStyle(color: Colors.black,fontSize: 12),
                                    ),
                                    SizedBox(
                                        height:
                                            5), // เพิ่มระยะห่างระหว่างบรรทัด
                                    Text(
                                      'www.hug1988.com',
                                      style: TextStyle(color: Colors.black,fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
