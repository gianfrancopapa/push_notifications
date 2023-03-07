import 'package:equatable/equatable.dart';

/// {@template notification}
/// Model representing a Notification.
/// {@endtemplate}
class Notification extends Equatable {
  /// {@macro notification}
  const Notification({
    required this.title,
    required this.body,
  });

  /// The notification title.
  final String title;

  /// The notification body.
  final String body;

  @override
  List<Object> get props => [title, body];
}
