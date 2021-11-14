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
              // Container(
              //   height: 125,
              //   width: 150,
              //   margin: const EdgeInsets.all(15),
              //   child: Card(
              //     elevation: 3,
              //     margin: const EdgeInsets.all(15),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     child: ClipRRect(
              //       borderRadius: BorderRadius.circular(14),
              //       child: Image.asset(
              //         userImageUrl,
              //         centerSlice: Rect.largest,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
          ChooseOnlineOrHospital(),
        ],
      ),
    );
  }
}
