import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _userAccountDrawerHeader(),
          _createDrawerItem(icon: Icons.home, text: 'Home', onTap: () {}),
          _createDrawerItem(icon: Icons.person, text: 'Profile', onTap: () {}),
          Divider(),
          _createDrawerItem(
              icon: Icons.settings, text: 'Settings', onTap: () {}),
          _createDrawerItem(
              icon: Icons.bug_report, text: 'Report an issue', onTap: () {}),
          _createDrawerItem(
              icon: Icons.exit_to_app, text: 'Exit', onTap: () {}),
          Divider(),
          _createDrawerItem(icon: Icons.system_update, text: 'Version: 0.0.1'),
        ],
      ),
    );
  }

  Widget _userAccountDrawerHeader() {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/header.png'),
        ),
      ),
      accountName: Text('Design Patterns in Dart'),
      accountEmail: Text(''),
      currentAccountPicture: CircleAvatar(
        child: Text(
          'DP',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(
            icon,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
