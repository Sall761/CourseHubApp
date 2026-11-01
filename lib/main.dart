import 'package:flutter/material.dart';
import 'Screens/Firstscreen.dart';

void main() {
  runApp(const CouseHubApp());
}

class CouseHubApp extends StatelessWidget {
  const CouseHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:TestScreen()
    );

  }
}