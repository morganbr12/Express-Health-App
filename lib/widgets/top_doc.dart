import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TopDoctorsRated extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;
  final String backgroundImageUrl;
  final String occupation;
  final String location;
  final String hospital;
  final String rated;

  const TopDoctorsRated({
    Key key,
    @required this.id,
    @required this.name,
    @required this.imageUrl,
    @required this.backgroundImageUrl,
    @required this.hospital,
    @required this.location,
    @required this.occupation,
    @required this.rated,
  }) : super(key: key);

  void selectedRatedDoctor(BuildContext ctx) {
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
      onTap: () => selectedRatedDoctor(context),
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Theme.of(context).primaryColor),
        ),
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: SizedBox(
                height: 80,
                width: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    // color: Colors.grey.withOpacity(0.3),
                    child: Image.asset(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text(occupation,
                          style: TextStyle(
                            fontSize: 12.5
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            hospital,
                            style:
                                TextStyle(
                                    color: Theme.of(context).primaryColor,
                                  fontSize: 11
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(location,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey
                      ),
                    ),
                  ),

                  // ---------- Ratings -----------

                  // Row(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
