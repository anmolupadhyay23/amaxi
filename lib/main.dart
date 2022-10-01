import 'package:amaxi/pages/driver_login.dart';
import 'package:amaxi/pages/home_page.dart';
import 'package:amaxi/pages/main_login.dart';
import 'package:amaxi/pages/user_login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: 'home_screen',
  routes: {
    'user_login': (context)=>userLogin(),
    'driver_login': (context)=>driverLogin(),
    'main_login': (context)=>loginAll(),
    'home_screen': (context)=>HomePage()
  },
));