import 'package:cc206_cashlens/settings_page.dart';
import 'package:cc206_cashlens/conversion_page.dart';
import 'package:flutter/material.dart';
import 'package:cc206_cashlens/features/dashboard_page.dart';
import 'package:cc206_cashlens/components/home_drawer.dart';
import 'package:cc206_cashlens/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/feature1': (context) => Feature1(),
        '/feature2': (context) => Feature2(),
        '/feature3': (context) => Feature3(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CashLens'),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(child: Text('Main Screen Body')),
      drawer: HomeDrawer(),
      bottomNavigationBar: HomeDrawer(), // This might need to be replaced with a bottom navigation widget.
    );
  }
}




