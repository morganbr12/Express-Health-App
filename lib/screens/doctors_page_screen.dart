import 'package:flutter/material.dart';

import '../models/category_data.dart';
import '../widgets/doc_page.dart';

class DoctorsPageScreen extends StatelessWidget {
  const DoctorsPageScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 4,
        ),
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
                hintText: 'Find Doctor',
                hintStyle: TextStyle(
                  color: Color.fromRGBO(39, 169, 208, 0.4),
                    fontSize: 13,
                  letterSpacing: 1.0,
                ),
              ),
              onChanged: (text) {

              },
            ),
          ),
        ),
        
        Container(
          margin: const EdgeInsets.only(
            left: 15,
              right: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Doctors',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                          'All',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor
                        ),
                      ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                        'assets/icons/funnel.png',
                      color: Theme.of(context).primaryColor,
                      scale: 1.5,
                    ),
                  )
                ],
              )
            ],
          ),
        ),

        GridView(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 0,
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
