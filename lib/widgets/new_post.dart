import 'package:flutter/material.dart';

class NewPost extends StatefulWidget {
  NewPost({Key key}) : super(key: key);

  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        // margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Theme.of(context).primaryColor),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text('Post'),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              child: Container(
                height: 46,
                width: 46,
                // padding: const EdgeInsets.all(13),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/secondimg.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Form(
              child: Column(
                children: [
                  TextField(
                    // onChanged:  textController,
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: InputBorder.none
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: InkWell(
                    onTap: () {},
                    child: Icon(Icons.mic_rounded),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.insert_photo_outlined),
                ),
                Flexible(
                  flex: 1,
                    child: Container(),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.send),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
