import 'package:flutter/material.dart';

class MyAddressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ที่อยู่ของฉัน'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ที่อยู่ปัจจุบัน',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            AddressCard(
              address: '123 ถนน แขวง เขต กรุงเทพมหานคร',
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('เพิ่มที่อยู่'),
            ),
          ],
        ),
      ),
    );
  }
}

class AddressCard extends StatelessWidget {
  final String address;

  const AddressCard({
    Key? key,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      color: const Color.fromARGB(255, 204, 207, 210),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
          bottomRight: Radius.circular(8.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ที่อยู่ปัจจุบัน',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(address),
          ],
        ),
      ),
    );
  }
}
