
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/search_bar_hm.dart';

import '../widgets/new_post.dart';
import '../widgets/newpost.dart';
import '../widgets/post_widgets.dart';
import '../models/category_data.dart';
import '../models/category_data.dart';
import '../models/users_info.dart';

class CommunityDashboardScreen extends StatefulWidget {

  const CommunityDashboardScreen(
      {Key key}) : super(key: key);

  @override
  State<CommunityDashboardScreen> createState() => _CommunityDashboardScreenState();
}

class _CommunityDashboardScreenState extends State<CommunityDashboardScreen> {

  void _addNewPost(String txContent, String name, int age,
      String occupation, String imageUrl, String hospital,) {
    final newContent = UsersFullDetails(
      id: DateTime.now().toString(),
      name: name,
      age: age,
      occupation: occupation,
      imageUrl: imageUrl,
      hospital: hospital,
      rated: 'true',
      telephoneNumber: 0244000000,
      text: txContent,
    );
    setState(() {
      NewPostData.add(newContent);
    });
  }

  void startAddNewPost(BuildContext ctx) {
    Navigator.of(ctx).push(
        PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 200),
          transitionsBuilder: (
              BuildContext ctx,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child){
            return ScaleTransition(
              alignment: Alignment.bottomCenter,
              scale: animation,
              child: child,
            );
          },
          pageBuilder: (
              BuildContext ctx,
              Animation<double> animation,
              Animation<double> secAnimation){
            return NewPost(_addNewPost);}
        ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 8, right: 8),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(0),
              child: Container(
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
                      hintText: 'search for post',
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
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Posts",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              'Trending',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Icon(Icons.filter_alt_sharp)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemBuilder: (ctx, _) {
                      return Column(
                        children: NewPostData.map(
                              (catNew) => PostAboutHealth(
                            imageUrl: catNew.imageUrl,
                            name: catNew.name,
                            occupation: catNew.occupation,
                            hospital: catNew.hospital,
                            rate: catNew.rated,
                            text: catNew.text,
                          ),
                        ).toList(),
                      );
                    },
                    itemCount: NewPostData.length,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.5),
        onPressed: () => startAddNewPost(context),
        child: Icon(Icons.add, size: 30,),
      ),
    );
  }
}
