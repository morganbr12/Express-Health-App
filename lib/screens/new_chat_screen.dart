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
        elevation: 0,
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
        alignment: Alignment.center,
        child: Container(
          width: 380,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              width: 1,
              color: Theme.of(context).primaryColor,
              style: BorderStyle.solid,
            ),
          ),
          child: TextField(
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border: InputBorder.none,
              hintText: 'search drug/pharmacy',
              alignLabelWithHint: true,
              hintStyle: TextStyle(
                  color: Color.fromRGBO(39, 169, 208, 0.4),
                  fontSize: 13
              ),
            ),
            onChanged: (value) {},
          ),
        ),
      ),
          SizedBox(
            height: 30,
          ),
          NewChatLook(),
        ],
      ),
    );
  }
}
