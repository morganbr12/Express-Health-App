import 'package:flutter/material.dart';

class NewPost extends StatelessWidget {
  final Function postCtx;


  NewPost(
      this.postCtx,
      {Key key, this.addPost}) : super(key: key);

  final Function addPost;
  final textController = TextEditingController();
  final imageController = TextEditingController();

  void closePost(BuildContext ctx) {
    Navigator.of(ctx).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          onPressed: () => closePost(context),
          icon: Icon(Icons.close, color: Colors.black,),
        ),
        title: Text('Start Post', style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
      ),
      body: ListView(
        children: [
          Container(
            // margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              // border: Border.all(color: Theme.of(context).primaryColor),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Divider(
                //   thickness: 2.0,
                // ),
                SizedBox(
                  height: 6,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
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
                       // onTap: () => openTypeArea(context),
                        maxLines: 12,
                        controller: textController,
                        scrollPhysics: ScrollPhysics(),
                        decoration: InputDecoration(
                          border: InputBorder.none
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  color: Color.fromRGBO(19, 169, 214, 0.3),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                      onTap: () {
                        postCtx(textController.text);
                      },
                      child: Icon(Icons.send),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
