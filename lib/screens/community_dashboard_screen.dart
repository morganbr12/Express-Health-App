import 'package:flutter/material.dart';

import '../widgets/search_bar_hm.dart';
import '../widgets/post_widgets.dart';
import '../widgets/new_post.dart';
import '../models/category_data.dart';

class CommunityDashboardScreen extends StatelessWidget {
  const CommunityDashboardScreen({Key key}) : super(key: key);

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
            NewPost(),
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
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.5),
        onPressed: () {},
        child: Icon(Icons.add, size: 30,),
      ),
    );
  }
}
