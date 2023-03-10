part of 'notification_bloc.dart';

abstract class NotificationEvent extends Equatable {
  const NotificationEvent();
}

class _NotificationOpened extends NotificationEvent {
  const _NotificationOpened({required this.notification});

  final Notification notification;

  @override
  List<Object> get props => [notification];
}

class _NotificationInForegroundReceived extends NotificationEvent {
  const _NotificationInForegroundReceived({required this.notification});

  final Notification notification;

  @override
  List<Object> get props => [notification];
}
