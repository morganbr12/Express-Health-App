import 'package:flutter/material.dart';

class TopDoctorsRange extends StatelessWidget {
  const TopDoctorsRange({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final topDocArgs = Modal
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Top Doctors'),
      ),
      body: Center(
        child: Text('Top Doctors'),
      ),
    );
  }
}
