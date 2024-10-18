// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Notifications",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          NotificationItem(
            title: 'System Update',
            subtitle: 'Your app has been updated to the latest version',
            timestamp: '1 hour ago',
          ),
          NotificationItem(
            title: 'Reminder',
            subtitle: 'Don\'t forget to complete your profile',
            timestamp: 'Yesterday',
          ),
        ],
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String timestamp;

  const NotificationItem({
    required this.title,
    required this.subtitle,
    required this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
      leading: Icon(
        Icons.notifications,
        color: Colors.blue,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Colors.grey[600],
        ),
      ),
      trailing: Text(
        timestamp,
        style: TextStyle(
          color: Colors.grey[500],
        ),
      ),
    );
  }
}
