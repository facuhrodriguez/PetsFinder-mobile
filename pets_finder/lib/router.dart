import 'package:flutter/material.dart';
import 'package:pets_finder/pages/root_app.dart';

Route<dynamic> generateRoute(RouteSettings setting) {
  switch (setting.name) {
    case '/root_app':
      return MaterialPageRoute(builder: (context) => const RootApp());
    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: Center(),
              ));
  }
}
