import 'package:flutter/material.dart';

import '../screens/home_page_screen.dart';


class Verify extends StatelessWidget {
  const Verify({Key key}) : super(key: key);

  void homePage(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(
      MaterialPageRoute(builder: (_) => EHHomePageScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 70),
          child: Text('Sign In',
            style: TextStyle(
              fontSize: 47,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          child: Text(
            'Enter Code been send to your Phone',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70,
                child: TextField(
                  textAlign: TextAlign.center,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(

                  ),
                ),
            ),
            Container(
              margin: EdgeInsets.all(15),
                width: 70,
                child: TextField(
                  textAlign: TextAlign.center,
                  cursorColor: Colors.white,
                ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: 70,
              child: TextField(
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: 70,
              child: TextField(
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
              ),
            ),
          ],
        ),
        InkWell(
          onTap: () => homePage(context),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Theme.of(context).primaryColor)
            ),
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 50),
            width: 170,
            child: Text(
              'Verify',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
