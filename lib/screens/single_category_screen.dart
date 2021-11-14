import 'package:flutter/material.dart';

class SingleCategoryScreen extends StatelessWidget {
  const SingleCategoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final singleCat =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final title = singleCat['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Cate screen ............'),
      ),
    );
  }
}
