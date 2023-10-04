import 'package:flutter/material.dart';

class Feature1 extends StatelessWidget {
  const Feature1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CashLens Dashboard'),
      ),
      body: ListView(
        children: [
          // Section 1: Banknote Detection
          DashboardBox(
            title: 'Banknote Detection',
            icon: Icons.account_balance, // You can change the icon
            notificationCount: 0, // Update with the actual notification count
          ),

          // Section 2: Currency Conversion
          DashboardBox(
            title: 'Currency Conversion',
            icon: Icons.monetization_on, // You can change the icon
            notificationCount: 2, // Update with the actual notification count
          ),

          // Section 3: E-Wallet
          DashboardBox(
            title: 'E-Wallet',
            icon: Icons.account_balance_wallet, // You can change the icon
            notificationCount: 1, // Update with the actual notification count
          ),

          // Section 4: Settings
          DashboardBox(
            title: 'Settings',
            icon: Icons.settings, // You can change the icon
            notificationCount: 0, // Update with the actual notification count
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
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CashLens Dashboard',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(), // Add a divider for separation
          ListTile(
            leading: Icon(icon),
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
