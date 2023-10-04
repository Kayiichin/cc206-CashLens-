import 'package:flutter/material.dart';

class ConversionPage extends StatelessWidget {
  const ConversionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Conversion'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Currency Conversion Box 1: From Currency (Peso)
            ConversionBox(
              title: 'From Currency (Peso)',
              icon: Icons.attach_money,
            ),

            SizedBox(height: 20), // Add spacing between the boxes

            // Currency Conversion Box 2: To Currency (Dollar)
            ConversionBox(
              title: 'To Currency (Dollar)',
              icon: Icons.attach_money,
            ),

            SizedBox(height: 20),

            // Rate information text
            Text(
              'Rates as of 19 Sep 2023 9:47 PM\n1 PHP = 0.018 USD',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ConversionBox extends StatelessWidget {
  final String title;
  final IconData icon;

  ConversionBox({
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          Icon(icon, size: 48, color: Colors.blue),
        ],
      ),
    );
  }
}
