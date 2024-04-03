import 'package:flutter/material.dart';

class QuestionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('คำถามที่พบบ่อย'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(9, (index) {
                return GestureDetector(
                  onTap: () {},
                  child: Card(
                    child: Center(
                      child: Text('เมนูที่ ${index + 1}'),
                    ),
                  ),
                );
              }),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                  },
                  child: Text('ติดต่อเรา'),
                ),
                SizedBox(width: 20), 
                ElevatedButton(
                  onPressed: () {
                  },
                  child: Text('ปุ่มอื่นๆ'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
