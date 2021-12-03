import 'package:flutter/material.dart';

import '../screens/appointment_screen.dart';

class UsersProfilePageScreen extends StatelessWidget {
  // final String id;
  final String userName;
  final String userImageUrl;
  final String occupation;
  // final String hospital;
  // final String location;
  // final String date;
  //
  UsersProfilePageScreen({
  //   @required this.id,
    @required this.userName,
   @required this.userImageUrl,
   @required this.occupation,
  //   @required this.hospital,
  //   @required this.location,
  //   @required this.date,
   });

  void selectAppointment(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (ctx) => PageScreenAppointment(''),
      ),
    );
  }

  void toChatPage(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      '/chat_screen',
      arguments: {
        'userName': userName,
        'userImageUrl': userImageUrl,
        'occupation': occupation,
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    final routesUserInfo =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    // final userId = routesUserInfo['id'];
    final userName = routesUserInfo['name'];
    final userImage = routesUserInfo['imageUrl'];
    final userWorkedLocation = routesUserInfo['location'];
    final userBackgroundImage = routesUserInfo['backgroundImageUrl'];
    final userOccupation = routesUserInfo['occupation'];
    final userWorkedHospital = routesUserInfo['hospital'];

    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 33,
      // ),
      body: ListView(
        children: [
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: AlignmentDirectional.lerp(
                    AlignmentDirectional.center,
                    AlignmentDirectional.bottomCenter,
                    1.7),
                children: [
                  Stack(
                    children: [
                      Container(
                      height: 300,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        child: Image.asset(
                          userBackgroundImage,
                          fit: BoxFit.cover,
                          height: 350,
                        ),
                      ),
                    ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(onPressed: () {
                            Navigator.of(context).pop();
                          },
                            icon: Icon(Icons.arrow_back_ios_new_sharp),
                          ),
                        ],
                      ),
                  ]
                  ),

                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      height: 201,
                      width: 251,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          userImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Text(
                      userName,
                      style:
                          TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                          ),
                    ),
                    Text(userOccupation,
                      style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            userWorkedHospital,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            userWorkedLocation,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {},
                      child: Icon(Icons.add_box),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () => toChatPage(context),
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/icons/chat.png',
                        cacheHeight: 25,
                        cacheWidth: 25,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 58,
                      width: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Patients'),
                          Text('1035'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 58,
                      width: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Experience'),
                          Text('10Yrs'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 58,
                      width: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Ratings'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text('4.7'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 20,
                          bottom: 2,
                          left: 15,
                        right: 0,
                      ),
                      child: Text('About',
                          style: TextStyle(
                              fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                      ),
                    ),
                  Container(
                    margin: const EdgeInsets.all(14),
                    height: 100,
                    width: 353,
                    child: Text(
                        'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are.'),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.maxFinite,
                      margin: const EdgeInsets.only(left: 15),
                      child: Text('Availability',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(left: 15, top: 5),
                    child: Text(
                      'Mon - Fri: 9:30-18:00',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () => selectAppointment(context),
                child: Container(
                  margin: EdgeInsets.all(28),
                  height: 43,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'REQUEST APPOINTMENT',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
