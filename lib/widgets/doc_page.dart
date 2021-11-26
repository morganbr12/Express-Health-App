import 'package:flutter/material.dart';

class DoctorsPageWidget extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;
  final String backgroundImageUrl;
  final String occupation;
  final String hospital;
  final String location;

  const DoctorsPageWidget({
    Key key,
    @required this.id,
    @required this.name,
    @required this.imageUrl,
    @required this.backgroundImageUrl,
    @required this.occupation,
    @required this.location,
    @required this.hospital,
  }) : super(key: key);

  void selectDocWid(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      '/doctorsProfile',
      arguments: {
        'id': id,
        'name': name,
        'imageUrl': imageUrl,
        'hospital': hospital,
        'location': location,
        'occupation': occupation,
        'backgroundImageUrl': backgroundImageUrl,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectDocWid(context),
      splashColor: Theme.of(context).primaryColor.withOpacity(0.1),
      borderRadius: BorderRadius.circular(15),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
             child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Theme.of(context).primaryColor),
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentGeometry.lerp(
                        Alignment.center,
                        Alignment.bottomCenter,
                        10,
                    ),
                    children: [
                      Container(
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(8),
                        // ),
                        height: 75,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            backgroundImageUrl,
                            // fit: BoxFit.cover,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          // color: Colors.pink,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Flex(
                          direction: Axis.horizontal,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                child: Text(
                                  name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 13),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          occupation,
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                        Text(
                          hospital,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding:
                              const EdgeInsets.only(bottom: 5, right: 8, left: 8),
                          child: Icon(Icons.add_box),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding:
                              const EdgeInsets.only(bottom: 5, left: 8, right: 8),
                          child: Image.asset(
                            'assets/icons/chat.png',
                            height: 23,
                            width: 23,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],),
      ),
    );
  }
}
