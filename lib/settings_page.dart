import 'package:flutter/material.dart';

void main() {
  runApp(SettingsPage());
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
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

  void openSoundDialog() {
    setState(() {
      isSoundDialogOpen = true;
    });
  }

  void closeSoundDialog() {
    setState(() {
      isSoundDialogOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.volume_up), // Volume icon
          title: Text('Sound'),
          onTap: () {
            openSoundDialog();
          },
        ),
        if (isSoundDialogOpen)
          AlertDialog(
            title: Text('This Feature is clicked'),
            content: Text('Still working on this feature.'),
            actions: <Widget>[
              TextButton(
                child: Text('Close'),
                onPressed: () {
                  closeSoundDialog();
                },
              ),
            ],
          ),
     ListTile(
          leading: Icon(Icons.color_lens), // Color palette icon
          title: Text('Colors'),
          onTap: () {
            openSoundDialog();
          },
        ),

        ListTile(
          leading: Icon(Icons.headset), // Support icon
          title: Text('Support'),
          onTap: () {
            openSoundDialog();
          },
        ),
        ListTile(
          leading: Icon(Icons.feedback), // Feedback icon
          title: Text('Feedback'),
          onTap: () {
            openSoundDialog();
          },
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app), // Logout icon
          title: Text('Logout'),
          onTap: () {
            openSoundDialog();
          },
        ),
      ],
    );
  }
}
