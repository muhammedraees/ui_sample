import 'package:flutter/material.dart';

class ui_one extends StatelessWidget {
  const ui_one({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        title: const Text('Additional Information'),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.share_outlined),
            title: Text('Share Dukaan App'),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            // leading: Icon(Icons),
            title: Text('Change Language'),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            title: Text('WhatsApp Chat Support'),
            // trailing: ButtonTheme(child: on),
          ),
          ListTile(
            leading: Icon(Icons.lock_sharp),
            title: Text('Privacy Policy'),
          ),
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text('Rate Us'),
          ),
          ListTile(
            leading: Icon(Icons.logout_rounded),
            title: Text('Sign Out'),
          ),
        ],
      ),
    );
  }
}
