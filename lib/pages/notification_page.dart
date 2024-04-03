import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('การแจ้งเตือน'),
      ),
      body: ListView(
        children: [
        
      
        ],
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const NotificationItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}
