import 'package:flutter/material.dart';
import '../../main.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    '/': (context) => const Home(),
  };
}
