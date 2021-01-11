import 'dart:async';
import 'package:flutter/material.dart';
import 'package:simple_flutter/constant/static_constant.dart';
import 'package:simple_flutter/utils/flavour_config.dart';
import 'package:simple_flutter/utils/route_observer.dart';
import 'package:simple_flutter/view/example_view.dart';

void main() {
  FlavorConfig(
      flavor: Flavor.PRODUCTION,
      color: Colors.deepPurpleAccent,
      values: FlavorValues(baseUrl: StaticConstant.baseUrlProduction));
  runZoned<Future<Null>>(() async {
    runApp(MaterialApp(
      navigatorObservers: <NavigatorObserver>[MyRouteObserver()],
      debugShowCheckedModeBanner: false,
      home: ExampleState(),
    ));
  });
}
