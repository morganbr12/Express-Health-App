import 'package:flutter/material.dart';

class SettingsPageScreen extends StatelessWidget {
  const SettingsPageScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Page'),
      ),
      body: Center(
        child: Text('settings'),
      ),
    );
  }
}
