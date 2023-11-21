import 'package:cc206_cashlens/components/home_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to CashLens!",
        style: GoogleFonts.josefinSans()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext ctx) => HomeDrawer()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, 
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20), 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "Get Started",
                style: GoogleFonts.josefinSans(
                  fontSize: 20,
                  color: Colors.white, 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
