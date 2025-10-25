import 'package:flutter/material.dart';
import 'package:saba_market/core/views/screens/home.dart';
import 'package:saba_market/core/views/screens/login.dart';
import 'package:saba_market/core/views/screens/register.dart';

class RouteManager {
  static Route<dynamic>? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/home":
        return MaterialPageRoute(builder: (ctx) => HomeScreen());
      case "/login":
        return MaterialPageRoute(builder: (ctx) => LoginScreen());
      case "/register":
        return MaterialPageRoute(builder: (ctx) => RegisterScreen());
      default:
        return MaterialPageRoute(builder: (ctx) => Text("Not found"));
    }
  }
}