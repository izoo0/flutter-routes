// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:froutes/details.dart';
import 'package:froutes/home.dart';

class onGenerateRoute {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        MaterialPageRoute(builder: (context) => HomeView());
        break;

      case '/detail':
        MaterialPageRoute(builder: (context) => DetailView());
        break;
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
        builder: (context) => Scaffold(
              appBar: AppBar(
                title: Text('Error Page'),
              ),
              body: Center(
                child: Text('Error No Route Found'),
              ),
            ));
  }
}
