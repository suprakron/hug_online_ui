import 'package:flutter/material.dart';
import 'package:hug_online_ui/pages/productdetail_page.dart';

class ProductTypePage extends StatelessWidget {
  Widget _buildIconButtonWithCircleBorder(String imagePath, String text) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.transparent, width: 2.0),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imagePath,
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 8),
                Text(
                  text,
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          width: 500.0,
          height: 35.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: [
              Icon(Icons.search),
              SizedBox(width: 8.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'ค้นหา',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetailPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.notification_important_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8.0, 8.0, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildMenuItem('ยา', Colors.red, 100, 50),
                    SizedBox(width: 2),
                    buildMenuItem('เครื่องสำอาง', Colors.blue, 100, 50),
                    SizedBox(width: 2),
                    buildMenuItem('อาหารเสริม', Colors.green, 100, 50),
                    SizedBox(width: 2),
                    buildMenuItem('อุปกรณ์การแพทย์', Colors.orange, 100, 50),
                    SizedBox(width: 2),
                    buildMenuItem('วัสดุทางการแพทย์', Colors.purple, 100, 50),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  padding:
                      EdgeInsets.symmetric(horizontal: 5.0, vertical:5.0),
                  children: [
                    buildProductItem('Product 1', 'assets/images/product_1.png',
                        'assets/images/component1.png'),
                    buildProductItem('Product 2', 'assets/images/product_1.png',
                        'assets/images/component1.png'),
                    buildProductItem('Product 3', 'assets/images/product_1.png',
                        'assets/images/component1.png'),
                    buildProductItem('Product 4', 'assets/images/product_1.png',
                        'assets/images/component1.png'),
                  ],
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(
      String title, Color backgroundColor, double width, double height) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: width,
      height: height,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget buildProductItem(
      String title, String imagePath, String componentImagePath) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: AspectRatio(
            aspectRatio: 1.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 5.0),
                Text(
                  title,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: Image.asset(
            componentImagePath,
            width: 100, 
            height: 100,  
          ),
        ),
      ],
    );
  }
}
