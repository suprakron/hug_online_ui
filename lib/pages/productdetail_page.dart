import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('รายละเอียดสินค้า'),
        actions: [
          IconButton(
            icon: Icon(Icons.chat),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.grey[300],
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/Product_A.jpg',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: 100,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'รายละเอียดสินค้า',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.favorite_border),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          Text(
                            'รายละเอียดเพิ่มเติมของสินค้าที่ต้องการแสดง',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.grey[300],
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'รายละเอียดสินค้า',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'รายละเอียดเพิ่มเติมของสินค้าที่ต้องการแสดง',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.grey[300],
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'รายระเอียดสินค้า',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  ' รายระเอียดเพิ่มเติมของสินค้าที่ต้องการแสดง',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(height: 225.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.chat),
                  onPressed: () {},
                ),
                SizedBox(width: 8),
                Flexible(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('เพิ่มไปยังรถเข็น'),
                  ),
                ),
                SizedBox(width: 8),
                Flexible(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('ซื้อเลย'),
                  ),
                ),
                SizedBox(width: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
