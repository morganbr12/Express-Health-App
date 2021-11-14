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
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: HomeSearchBar(),
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
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.5),
        onPressed: () {},
        child: Icon(Icons.add, size: 30,),
      ),
    );
  }
}
