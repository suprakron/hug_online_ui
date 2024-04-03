import 'package:flutter/material.dart';

class MyOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,  
      child: Scaffold(
        appBar: AppBar(
          title: Text('คำสั่งซื้อของฉัน'),
          backgroundColor: Colors.blue, 
          bottom: TabBar(
            tabs: [
              Tab(text: 'ประวัติคำสั่งซื้อ'),  
              Tab(text: 'ประวัติการชำระเงิน'), 
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildOrderHistory(context),
            buildPaymentHistory(context),
          ],
        ),
      ),
    );
  }

  Widget buildOrderHistory(BuildContext context) {
    return ListView.builder(
      itemCount: 5, // จำนวนรายการสินค้า
      itemBuilder: (context, index) {
        return buildOrderItem(context, index);
      },
    );
  }

  Widget buildPaymentHistory(BuildContext context) {
    return ListView.builder(
      itemCount: 5, // จำนวนรายการการชำระเงิน
      itemBuilder: (context, index) {
        return buildPaymentItem(context, index);
      },
    );
  }

  Widget buildOrderItem(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),  
            ),
          ],
        ),
        child: ListTile(

          leading: Image.asset(
          'assets/images/Product_A.jpg',  
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
 

          title: Text('Product ${index + 1}'),  
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Order ID: 123456'),  
              Text('Status: รอดำเนินการจัดส่ง '),  
            ],
          ),
          trailing: Icon(Icons.arrow_forward_ios), 
          onTap: () {
   
          },
        ),
      ),
    );
  }

  Widget buildPaymentItem(BuildContext context, int index) {
     return Container();
  }
}
