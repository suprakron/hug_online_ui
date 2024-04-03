import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hug_online_ui/main.dart';
import 'package:hug_online_ui/pages/home_page.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        title: Center(
          child: Text('รถเข็น'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
        ],
      ),

// *********************************************  body ****************************************************

      body: ListView(
        children: [
          SizedBox(height: 15.0),
          ListTile(
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(
                  value: false, // กำหนดค่าเริ่มต้นของ Checkbox
                  onChanged: (bool? value) {
                    // เขียนโค้ดที่ต้องการเมื่อมีการเปลี่ยนแปลงใน Checkbox
                  },
                ),
                Image.asset('assets/images/Product_A.jpg'),
              ],
            ),
            title: Text('Product A'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {},
                ),
                Text('2'),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          ListTile(
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(
                  value: false,  
                  onChanged: (bool? value) {
                  },
                ),
                Image.asset('assets/images/Product_B.jpg'),
              ],
            ),
            title: Text('Product A'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {},
                ),
                Text('2'),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),

// ********************************************* end body ****************************************************

      bottomNavigationBar: Container(
        height: 150,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'รวมทั้งหมด',
              style: TextStyle(
                fontWeight: FontWeight.bold, // ทำให้ตัวหนังสือหนาขึ้น
              ),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0), // กำหนดความสูงให้กับขอบบนและล่างของปุ่ม
                child: Text('สั่งซื้อ'),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // สีพื้นหลังของปุ่มส้ม
                elevation: 0, // เอฟเฟคการเงาของปุ่ม
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
