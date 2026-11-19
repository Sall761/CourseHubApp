import 'package:course_hub_app/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'Screens/login_screen.dart';


void main() {
  runApp(const CouseHubApp());
}

class CouseHubApp extends StatelessWidget {
  const CouseHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: LoginScreen()
    );

  }
}