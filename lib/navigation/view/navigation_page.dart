import 'package:flutter/material.dart';
import 'package:push_notifications/navigation/navigation.dart';

abstract class NavigationPage<T, R extends Object?> {
  const NavigationPage({
    required NavigatorStateClient client,
  }) : _client = client;

  final NavigatorStateClient _client;

  bool apply(T data);

  Route<R> route(T data);

  void register(Stream<T> stream) {
    stream.listen((data) {
      if (apply(data)) {
        _client.push(route(data));
      }
    });
  }
}
