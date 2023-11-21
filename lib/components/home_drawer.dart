import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
          height: 200, // Fixed height to prevent overflow
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue[900],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://scontent.fmnl9-2.fna.fbcdn.net/v/t39.30808-6/403812254_6885865314838496_2988926272091856146_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEjGCQORjMqmGguHksLx19UFO12k8pnAZEU7XaTymcBkRabI3y7BLhyT6Hi_QFRHvGyfkhY2ggWGcCL0dU6ibu0&_nc_ohc=DAzMHF9P1P8AX9CPznc&_nc_ht=scontent.fmnl9-2.fna&oh=00_AfBLu9ALDcilDbV2wlUo17llj6dlNh1FnudwGYubfZ9tsg&oe=655EC7B5',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Navigate with CashLens',
                  style: GoogleFonts.josefinSans(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildDrawerItem(
                title: 'Dashboard',
                icon: Icons.dashboard,
                color: Colors.amber,
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.pushNamed(context, '/feature1');
                },
              ),
              _buildDrawerItem(
                title: 'Currency Conversion',
                icon: Icons.monetization_on,
                color: Colors.amber,
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.pushNamed(context, '/feature2');
                },
              ),
              _buildDrawerItem(
                title: 'Settings',
                icon: Icons.settings,
                color: Colors.amber,
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.pushNamed(context, '/feature3');
                },
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildDrawerItem({
  required String title,
  required IconData icon,
  required Color color,
  required VoidCallback onTap,
}) {
  return Expanded(
    child: ListTile(
      title: Text(title,
      style: GoogleFonts.josefinSans()),
      leading: Icon(
        icon,
        color: color,
      ),
      onTap: onTap,
    ),
  );
}
}