import 'package:flutter/material.dart';

import '../models/category_data.dart';
import '../widgets/doc_page.dart';
import '../widgets/search_bar_hm.dart';

class DoctorsPageScreen extends StatelessWidget {
  const DoctorsPageScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // SizedBox(
        //   height: 8,
        // ),
        // HomeSearchBar(),
        GridView(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 15,
          ),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            mainAxisExtent: 195,
          ),
          children: DUMMY_INFORMATION
              .map(
                (catDocPage) => DoctorsPageWidget(
                  backgroundImageUrl: catDocPage.backgroundImageUrl,
                  id: catDocPage.id,
                  name: catDocPage.name,
                  imageUrl: catDocPage.imageUrl,
                  occupation: catDocPage.occupation,
                  location: catDocPage.location,
                  hospital: catDocPage.hospital,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
