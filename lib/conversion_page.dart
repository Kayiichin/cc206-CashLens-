
import 'package:flutter/material.dart';
import 'package:cc206_cashlens/settings_page.dart';
import 'package:cc206_cashlens/components/home_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class Feature2 extends StatelessWidget {
  const Feature2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeDrawer()),
        );
        return false; // Prevent default back button behavior
      },
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              SizedBox(width: 10), // Adjust the spacing
              Text('CashLens Currency Conversion', 
              style: GoogleFonts.josefinSans(),
              ),
            ],
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Currency Conversion Box 1: From Currency (Peso)
              ConversionBox(
                title: 'From Currency (Peso)',
                icon: Icons.money_rounded,
              ),

              SizedBox(height: 20), // Add spacing between the boxes

              // Currency Conversion Box 2: To Currency (Dollar)
              ConversionBox(
                title: 'To Currency (Dollar)',
                icon: Icons.money_rounded,
              ),

              SizedBox(height: 20),

              // Rate information text in a yellow box
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellow[200],
                ),
                child: Text(
                  'Rates as of 19 Sep 2023 9:47 PM\n1 PHP = 0.018 USD',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.josefinSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
