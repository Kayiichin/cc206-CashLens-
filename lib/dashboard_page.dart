import 'package:flutter/material.dart';

class Feature1 extends StatelessWidget {
  const Feature1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CashLens Dashboard'),
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.yellow[200],
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                'Welcome to CashLens',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),

          // Section 1: Banknote Detection
          DashboardBox(
            title: 'Banknote Detection',
            icon: Icons.account_balance,
            notificationCount: 0,
          ),
          SizedBox(height: 10),

          // Section 2: Currency Conversion
          DashboardBox(
            title: 'Currency Conversion',
            icon: Icons.monetization_on,
            notificationCount: 2,
          ),
          SizedBox(height: 10),

          // Section 3: E-Wallet
          DashboardBox(
            title: 'E-Wallet',
            icon: Icons.account_balance_wallet,
            notificationCount: 1,
          ),
          SizedBox(height: 10),

          // Section 4: Settings
          DashboardBox(
            title: 'Settings',
            icon: Icons.settings,
            notificationCount: 0,
          ),
        ],
      ),
    );
  }
}

class DashboardBox extends StatelessWidget {
  final String title;
  final IconData icon;
  final int notificationCount;

  DashboardBox({
    required this.title,
    required this.icon,
    required this.notificationCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              icon,
              color: Colors.blue[900], // Set the icon color to dark blue
            ),
            title: Text(title),
            trailing: notificationCount > 0
                ? CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 10,
                    child: Text(
                      '$notificationCount',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                : null,
            onTap: () {
              // Handle section tap here
            },
          ),
        ],
      ),
    );
  }
}
