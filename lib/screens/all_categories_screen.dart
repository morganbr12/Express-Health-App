import 'package:flutter/material.dart';

class AllCategoriesScreen extends StatelessWidget {
  const AllCategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('All categories'),
      ),
      body: Center(child: Text('All Cate'),),
    );
  }
}
