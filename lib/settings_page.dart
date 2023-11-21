import 'package:flutter/material.dart';

class Feature3 extends StatelessWidget {
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
          title: Text('CashLens Settings',
          style: GoogleFonts.josefinSans()),
          backgroundColor: Colors.blue[900],
        ),
        body: SettingsList(),
      ),
    );
  }
}

class SettingsList extends StatefulWidget {
  @override
  _SettingsListState createState() => _SettingsListState();
}

class _SettingsListState extends State<SettingsList> {
  bool isSoundDialogOpen = false;
  bool isColorsDialogOpen = false;
  bool isSupportDialogOpen = false;
  bool isFeedbackDialogOpen = false;
  bool isSecurityDialogOpen = false;
  bool isLanguageDialogOpen = false;
  bool isNotificationsDialogOpen = false;

  void openDialog(String feature) {
    setState(() {
      if (feature == 'Sound') {
        isSoundDialogOpen = true;
      } else if (feature == 'Colors') {
        isColorsDialogOpen = true;
      } else if (feature == 'Support') {
        isSupportDialogOpen = true;
      } else if (feature == 'Feedback') {
        isFeedbackDialogOpen = true;
      } else if (feature == 'Security') {
        isSecurityDialogOpen = true;
      } else if (feature == 'Language') {
        isLanguageDialogOpen = true;
      } else if (feature == 'Notifications') {
        isNotificationsDialogOpen = true;
      }
    });
  }

  void closeDialog(String feature) {
    setState(() {
      if (feature == 'Sound') {
        isSoundDialogOpen = false;
      } else if (feature == 'Colors') {
        isColorsDialogOpen = false;
      } else if (feature == 'Support') {
        isSupportDialogOpen = false;
      } else if (feature == 'Feedback') {
        isFeedbackDialogOpen = false;
      } else if (feature == 'Security') {
        isSecurityDialogOpen = false;
      } else if (feature == 'Language') {
        isLanguageDialogOpen = false;
      } else if (feature == 'Notifications') {
        isNotificationsDialogOpen = false;
      }
    });
  }

  Widget buildSettingItem(IconData icon, String text, bool isDialogOpen) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            openDialog(text);
          },
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Colors.blue[900],
                ),
                Text(text),
              ],
            ),
          ),
        ),
        if (isDialogOpen)
          AlertDialog(
            title: Text('$text Settings'),
            content: Text('Adjust the $text settings here.'),
            actions: <Widget>[
              TextButton(
                child: Text('Close'),
                onPressed: () {
                  closeDialog(text);
                },
              ),
            ],
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        buildSettingItem(Icons.volume_up, 'Sound', isSoundDialogOpen),
        buildSettingItem(Icons.color_lens, 'Colors', isColorsDialogOpen),
        buildSettingItem(Icons.headset, 'Support', isSupportDialogOpen),
        buildSettingItem(Icons.feedback, 'Feedback', isFeedbackDialogOpen),
        buildSettingItem(Icons.security, 'Security', isSecurityDialogOpen),
        buildSettingItem(Icons.language, 'Language', isLanguageDialogOpen),
        buildSettingItem(Icons.notifications, 'Notifications', isNotificationsDialogOpen),
        buildSettingItem(Icons.exit_to_app, 'Logout', false),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.center,
          child: Text(
            '© Cashlens Company. All Rights Reserved',
            style: GoogleFonts.josefinSans(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ),
      ],
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
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: GoogleFonts.josefinSans(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          Icon(icon, size: 48, color: Colors.blue[900]),
        ],
      ),
    );
  }
}
