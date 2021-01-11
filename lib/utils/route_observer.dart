import 'package:flutter/widgets.dart';

class MyRouteObserver extends RouteObserver<PageRoute<dynamic>> {

  static final MyRouteObserver _singleton = MyRouteObserver._internal();

  factory MyRouteObserver() {
    return _singleton;
  }

  MyRouteObserver._internal();

  @override
  void didPush(Route<dynamic> route, Route<dynamic> previousRoute) {
    super.didPush(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic> newRoute, Route<dynamic> oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic> previousRoute) {
    super.didPop(route, previousRoute);
  }
}