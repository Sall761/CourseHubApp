import 'package:flutter/material.dart';
import 'Screens/profileScreen.dart';
import 'Screens/courseDetailsScreen.dart';
import 'Screens/paymentScreen.dart';

void main() {
  runApp(const CouseHubApp());
}

class CouseHubApp extends StatelessWidget {
  const CouseHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home:(ProfileScreen())
    );

  }
}