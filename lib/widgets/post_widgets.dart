import 'package:flutter/material.dart';

class PostAboutHealth extends StatefulWidget {
  final String name;
  final String imageUrl;
  final String occupation;
  final String hospital;
  final String rate;
  final String text;

  PostAboutHealth(
      {@required this.imageUrl,
      @required this.name,
      @required this.hospital,
      @required this.occupation,
      @required this.rate,
      @required this.text});

  @override
  _PostAboutHealthState createState() => _PostAboutHealthState();
}

class _PostAboutHealthState extends State<PostAboutHealth> {
  int count = 0;

  void _countNum() {
    setState(() {
      count++;
    });
  }

  void _selectPost() {}

  @override
  Widget build(BuildContext context) {
    print(BuildContext);
    return InkWell(
      onTap: _selectPost,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          // height: 230,
          width: double.maxFinite,
          // margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Theme.of(context).primaryColor),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 70,
                      width: 70,
                      margin: const EdgeInsets.all(8),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            widget.imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 20,
                        child: Text(
                          widget.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              widget.occupation,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Icon(
                              Icons.adjust,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          Container(
                            child: Text(
                              widget.hospital,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Container(
                            child: Text(
                              '5.0 Ratings',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                // height: 80,
                margin: const EdgeInsets.all(12),
                child: Text(
                  widget.text,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        children: [
                          Text('6.5K'),
                          InkWell(
                            onTap: () {},
                            child: Image.asset('assets/icons/like.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        children: [
                          Text('608'),
                          InkWell(
                            onTap: () {},
                            child: Icon(Icons.message_rounded),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        children: [
                          Text('1.7K'),
                          InkWell(
                            onTap: () {},
                            child: Icon(Icons.arrow_upward_outlined),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        children: [
                          Text('2'),
                          InkWell(
                            onTap: _countNum,
                            child: Icon(Icons.arrow_downward_outlined),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
