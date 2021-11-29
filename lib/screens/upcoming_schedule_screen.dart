import 'package:flutter/material.dart';

class UpComingScreenPage extends StatelessWidget {
  const UpComingScreenPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedules'),
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Text(''
            'Upcoming Schedules'),
      ),
    );
  }
}
