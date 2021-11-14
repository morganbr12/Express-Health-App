import 'package:flutter/material.dart';


class ChatSearchBar extends StatefulWidget {
  const ChatSearchBar({Key key}) : super(key: key);

  @override
  _ChatSearchBarState createState() => _ChatSearchBarState();
}

class _ChatSearchBarState extends State<ChatSearchBar> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      // autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFormField(
            cursorColor: Theme.of(context).primaryColor,
            cursorHeight: 21,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'How is your health?',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  // color: Theme.of(context).primaryColor,
                ),
              ),
              // filled: true,
            ),
            validator: (value) {
              if (value.isEmpty) {
                return "Search can't be found";
              } else {
                return null;
              }
            },
          ),
        ],
      ),
    );
  }
}
