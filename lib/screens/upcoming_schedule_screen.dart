import 'package:flutter/material.dart';

class UpComingScreenPage extends StatelessWidget {
  const UpComingScreenPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Schedules'),),
      body: Center(
        child: Text(''
            'Upcoming Schedules'),
      ),
    );
  }
}
