import 'package:flutter/material.dart';

import '../widgets/new_chat_look.dart';
import '../widgets/chat_search.dart';

class NewChatScreen extends StatelessWidget {
  const NewChatScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String title = 'New Chat';
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: ChatSearchBar(),
          ),
          NewChatLook(),
        ],
      ),
    );
  }
}
