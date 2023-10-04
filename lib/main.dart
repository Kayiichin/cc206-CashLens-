import 'package:flutter/material.dart';
import 'package:cc206_cashlens/features/dashboard_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Feature1(),
    );
  }
}
