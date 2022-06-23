import 'package:flutter/material.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        toolbarHeight: 35,
      ),
      body: ListView(
        children: [
          Stack(
            alignment: AlignmentGeometry.lerp(
                Alignment.center, Alignment.bottomCenter, 1.7),
            children: [
              Container(
                width: double.infinity,
                height: 250,
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/bgimg8.jpg',
                    centerSlice: Rect.largest,
                  ),
                ),
              ),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  height: 117,
                  width: 146,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/secondimg.jpg',
                      centerSlice: Rect.largest,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Form(
                  onChanged: () {},
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8.0),
                            width: size.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'First Name',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'First name',
                                    hintStyle: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.all(8.0),
                            width: size.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Other Names',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Other names',
                                    hintStyle: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8.0),
                            width: size.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Last Name',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Last name',
                                    hintStyle: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.all(8.0),
                            width: size.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Title',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Doctor, Dr',
                                      hintStyle: TextStyle(fontSize: 13),
                                      suffixIcon: Icon(
                                          Icons.keyboard_arrow_down_outlined)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style: TextStyle(
                                fontSize: 13,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: 'f.morgan221@gmail.com'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Phone Number',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Theme.of(context).primaryColor),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 100,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        prefixIcon:
                                            Icon(Icons.keyboard_arrow_down),
                                        hintText: '233'),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  width: 200,
                                  child: TextField(
                                    decoration:
                                        InputDecoration(hintText: '123456789'),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Address',
                              style: TextStyle(
                                fontSize: 13,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: 'Creamsin Lane, Cantonments, GH'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Profession',
                              style: TextStyle(
                                fontSize: 13,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            TextField(
                              decoration:
                                  InputDecoration(hintText: 'Medical Doctor'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hospital',
                              style: TextStyle(
                                fontSize: 13,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: 'Kole-bu Teaching Hospital'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Doctors Credentials',
                              style: TextStyle(
                                fontSize: 13,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(hintText: '1A44Pt2'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
