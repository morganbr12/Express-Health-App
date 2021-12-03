import 'package:flutter/material.dart';

import '../widgets/choose_online_hospital.dart';

class PageScreenAppointment extends StatelessWidget {
  final String userImageUrl;

  PageScreenAppointment(this.userImageUrl);

  @override
  Widget build(BuildContext context) {
    // final routeAppointment =
    //     ModalRoute.of(context).settings.arguments as Map<String, Object>;
    // final userImageUrl = routeAppointment['imageUrl'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment'),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 21,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Row(
            children: [

            ],
          ),
          ChooseOnlineOrHospital(),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  size: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text('July',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
