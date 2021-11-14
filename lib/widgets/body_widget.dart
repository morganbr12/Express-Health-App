import 'package:expresshealth/models/category_data.dart';
import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import 'schedule_date.dart';
import 'top_doc.dart';
import 'search_bar_hm.dart';

class HomeScreenBodyWidget extends StatelessWidget {
  const HomeScreenBodyWidget({Key key}) : super(key: key);

  void selectSeeALl(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/all_top_doc');
  }


  void selecteCategoriesSeeAll(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/all_categories_page');
  }

  void selectUpcomingSchedule(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/upcoming_schedule');
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 1,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
              child: HomeSearchBar(),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Schedule',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () => selectUpcomingSchedule(context),
                    child: Text('see all'),
                  ),
                ],
              ),
              ScheduleDateTimeWithDoc(),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () => selecteCategoriesSeeAll(context),
                    child: Text('see all'),
                  ),
                ],
              ),
              Row(children: [
                Expanded(
                  child: SizedBox(
                    height: 130,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: CategoryDataInformation.map(
                        (catData) => CategoryItem(
                          title: catData.title,
                          image: catData.image,
                        ),
                      ).toList(),
                    ),
                  ),
                ),
              ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Doctors',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () => selectSeeALl(context),
                child: Text('see all'),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (ctx, index) {
                return Column(
                  children: DUMMY_INFORMATION
                      .map(
                        (catRated) => TopDoctorsRated(
                          id: catRated.id,
                          name: catRated.name,
                          imageUrl: catRated.imageUrl,
                          backgroundImageUrl: catRated.backgroundImageUrl,
                          location: catRated.location,
                          hospital: catRated.hospital,
                          rated: catRated.rated,
                          occupation: catRated.occupation,
                        ),
                      )
                      .toList(),
                );
              },
              itemCount: DUMMY_INFORMATION.length,
            ),
          ),
        ],
      ),
    );
  }
}
