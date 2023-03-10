import 'package:flutter/widgets.dart';

class NavigatorStateClient {
  NavigatorStateClient({required GlobalKey<NavigatorState> navigatorKey})
      : _navigatorKey = navigatorKey;

  final GlobalKey<NavigatorState> _navigatorKey;

  Future<T?>? push<T extends Object?>(Route<T> route) {
    return _navigatorKey.currentState?.push(route);
  }
}
