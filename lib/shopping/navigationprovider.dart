import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigationProvider =
    ChangeNotifierProvider((ref) => NavigationNotifier());

class NavigationNotifier extends ChangeNotifier {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void push(Widget screen) {
    navigatorKey.currentState?.push(MaterialPageRoute(builder: (_) => screen));
    notifyListeners();
  }

  void pop() {
    navigatorKey.currentState?.pop();
    notifyListeners();
  }
}
