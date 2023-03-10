import 'package:flutter/material.dart' hide Notification;
import 'package:notification_repository/notification_repository.dart';
import 'package:push_notifications/chat/chat.dart';
import 'package:push_notifications/navigation/navigation.dart';

class ChatNotificationRoute extends NavigationPage<Notification, void> {
  const ChatNotificationRoute({required super.client});

  @override
  bool apply(Notification data) {
    return true;
  }

  @override
  Route<void> route(Notification data) {
    return ChatPage.route<void>(data);
  }
}

class ChatPage extends StatelessWidget {
  const ChatPage({super.key, required this.notification});

  final Notification notification;

  static Route<T> route<T>(Notification notification) {
    return MaterialPageRoute<T>(
      builder: (context) {
        return ChatPage(notification: notification);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChatView(notification: notification);
  }
}
