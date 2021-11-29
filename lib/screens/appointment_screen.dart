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
              Text('July')
            ],
          )
        ],
      ),
    );
  }
}
