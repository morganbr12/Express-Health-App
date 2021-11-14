import 'package:flutter/material.dart';

class CommunityPostNews extends StatelessWidget {
  final String id;
  final String name;
  final String occupation;
  //final bool isRated;
  final String imageUrl;

  const CommunityPostNews({
    Key key,
    @required this.id,
    @required this.name,
    @required this.occupation,
    // @required this.isRated,
    @required this.imageUrl,
  }) : super(key: key);

  void selectedMessage() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectedMessage,
      splashColor: Theme.of(context).primaryColor.withOpacity(0.3),
      child: Card(
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(child: Text(name) //Image.asset(
                    //   imageUrl,
                    //   fit: BoxFit.cover,
                    //   height: 150,
                    //   width: 150,
                    // ),
                    )
              ],
            )
          ],
        ),
      ),
    );
  }
}
