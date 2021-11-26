import 'package:flutter/material.dart';

class ChatPlaceScreen extends StatefulWidget {
  ChatPlaceScreen({Key key}) : super(key: key);

  @override
  State<ChatPlaceScreen> createState() => _ChatPlaceScreenState();
}

class _ChatPlaceScreenState extends State<ChatPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    final information = ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final userName = information['userName'];
    final userImageUrl = information['userImageUrl'];
    final occupation = information['occupation'];

    final title = Container(
      child: Row(
        children: [
          Container(
            height: 40,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black,
            ),
            child: ClipRRect(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName!=null? userName: 'default',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                Text(
                  'Dentist',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: title,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(15)),
              child: Icon(Icons.call),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(15)),
              child: Icon(Icons.videocam_rounded),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
