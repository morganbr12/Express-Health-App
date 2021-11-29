import 'package:flutter/material.dart';


import '../widgets/callus_page.dart';
import '../widgets/feedback.dart';

class HelpScreenPage extends StatefulWidget {

  const HelpScreenPage({Key key}) : super(key: key);

  @override
  State<HelpScreenPage> createState() => _HelpScreenPageState();
}

class _HelpScreenPageState extends State<HelpScreenPage> {
  // int _currentState = 0;
  //
  // void _onTapNav(int index) {
  //   setState(() {
  //     _currentState = index;
  //   });
  // }

  final _changes = [
    CallUs(),
    FeedBack(),
  ];

  @override
  Widget build(BuildContext context) {
    final title = Text('Help');

    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text('Contact Us',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(50)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    // width: double.maxFinite,
                    padding: const EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      // color: Color.fromRGBO(19, 169, 214, 1),
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/icons/headphones.png'),
                        SizedBox(
                          width: 6,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text('Call US', style: TextStyle(
                            fontSize: 19,
                            // color: Colors.grey
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/icons/comment.png'),
                      SizedBox(
                        width: 6,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text('Send Feedback', style: TextStyle(
                            fontSize: 19,
                            // color: Colors.grey
                        ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
