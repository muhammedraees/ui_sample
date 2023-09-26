import 'package:flutter/material.dart';

class screenOne extends StatefulWidget {
  const screenOne({super.key});

  @override
  State<screenOne> createState() => _screenOneState();
}

class _screenOneState extends State<screenOne> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Additional Information'),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          const ListTile(
            leading: Icon(Icons.share_outlined),
            title: Text('Share Dukaan App'),
            trailing: Icon(Icons.chevron_right),
          ),
          const ListTile(
            leading: Image(
              image: AssetImage('assets/images/a_comment.png'),
              width: 25,
            ),
            title: Text('Change Language'),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Image(
              image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfU9cOYyPAJcavaRn7V3T0Gm4MaJBqhC6bkg&usqp=CAU'),
              width: 25,
            ),
            title: Text('WhatsApp Chat Support'),
            trailing: _buildSwitch(),
          ),
          const ListTile(
            leading: Icon(Icons.lock_outline),
            title: Text('Privacy policy'),
          ),
          const ListTile(
            leading: Icon(Icons.star_border),
            title: Text('Rate Us'),
          ),
          const ListTile(
            leading: Icon(Icons.logout_rounded),
            title: Text('Sign Out'),
          ),
          const SizedBox(
            height: 440,
          ),
          const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Version \n  2.4.2',
                style: TextStyle(color: Colors.grey),
              )),
        ],
      )),
    );
  }

  Widget _buildSwitch() {
    return Switch(value: _switchValue, onChanged: _updateValue);
  }

  void _updateValue(bool value) {
    setState(() {
      _switchValue = value;
    });
  }
}
