import 'package:flutter/material.dart';
import 'package:payment_gateway/screens/dashboard_screen.dart';


void main() {
  runApp( MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(backgroundColor: Colors.white),
    ),
    home: DashboardScreen(),
  ));
}

