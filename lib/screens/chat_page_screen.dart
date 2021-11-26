import 'package:flutter/material.dart';

import '../widgets/chat_place.dart';

class ChatHomePageScreen extends StatelessWidget {
  const ChatHomePageScreen({
    Key key,
  }) : super(key: key);

  void selectTextChat(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      '/new_chat',
    );
  }

  @override
  Widget build(BuildContext context) {
    final title = 'Chat';
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          title,
          style: TextStyle(
            color: Theme.of(context).accentColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: InkWell(
              onTap: () => selectTextChat(context),
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/icons/edit.png',
                height: 25,
                width: 25,
                color: Theme.of(context).accentColor,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          ChatPlaceLook(),
        ],
      ),
    );
  }
}
