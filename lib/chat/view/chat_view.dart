import 'package:flutter/material.dart' hide Notification;
import 'package:notification_repository/notification_repository.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key, required this.notification});

  final Notification notification;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        title: Text(
          notification.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(notification.body),
      ),
    );
  }
}
