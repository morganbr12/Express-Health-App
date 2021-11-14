import 'package:flutter/material.dart';

class HelpScreenPage extends StatelessWidget {
  const HelpScreenPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
      ),
      body: Center(
        child: Text('Help Page'),
      ),
    );
  }
}
