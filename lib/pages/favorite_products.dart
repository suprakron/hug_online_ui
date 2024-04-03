import 'package:flutter/material.dart';

class FavoriteProductsPage extends StatelessWidget {
  final List<String> productImages = [
    'assets/images/Product_A.jpg',
    'assets/images/Product_B.jpg',
    'assets/images/Product_B.jpg',
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('รายการสินค้าโปรด'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'รายการสินค้าโปรดของคุณ',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: productImages.length,
                itemBuilder: (context, index) {
                  return buildProductItem(context, index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProductItem(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[300],
      ),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Container(
          width: 100,
          height: 140,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(productImages[index]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text('ชื่อสินค้า $index'),
        subtitle: Text('รายละเอียดสินค้า $index'),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('ลบสินค้าที่ $index ออกจากรายการโปรด')),
            );
          },
        ),
      ),
    );
  }
}
