import 'package:flutter/material.dart';

import '../widgets/body_widget.dart';
import 'community_dashboard_screen.dart';
import 'notification_page_screen.dart';
import 'pharmacy_page_screen.dart';
import 'doctors_page_screen.dart';
import '../widgets/bottomNavBar.dart';

class EHHomePageScreen extends StatefulWidget {
  @override
  _EHHomePageScreenState createState() => _EHHomePageScreenState();
}

class _EHHomePageScreenState extends State<EHHomePageScreen> {
  final String title;
  final String image;

  _EHHomePageScreenState({this.title, this.image});

  int _currentIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final _tabs = [
    PageView(
      children: [
        ListView(
          children: [
            HomeScreenBodyWidget(),
          ],
        ),
        CommunityDashboardScreen(),
      ],
    ),
    DoctorsPageScreen(),
    PharmacyPageScreen(),
    NotificationPageScreen(),
  ];

  void _selectChat(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/chat_page');
  }

  @override
  Widget build(BuildContext context) {
    final _title = Center(
      child: Column(
        children: [
          Column(
            children: [
              Text(
                'Location',
                style: TextStyle(
                  fontSize: 13,
                  color: Theme.of(context).accentColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon(Icons.arrow_drop_down),
                  Text(
                    'Cantonments',
                    style: TextStyle(
                      fontSize: 15,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        title: _title,
        leading: Builder(builder: (context) {
          return InkWell(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.grey,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Theme.of(context).primaryColor.withOpacity(0.4),
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  child: Icon(
                    Icons.person,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
            ),
          );
        }),
        actions: [
          IconButton(
            onPressed: () => _selectChat(context),
            icon: Image.asset(
              'assets/icons/chat.png',
            ),
          ),
        ],
      ),
      body: _tabs[_currentIndex],

      // ------------ Drawer --------------

      drawer: DrawerWidget(),

      // ------- BottomNavigationBar ------------

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black,
        onTap: _onItemTap,
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_search_sharp),
            label: 'Doctors',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/drug1.png',
              height: 16,
              // color: Colors.grey,
            ),
            label: 'Pharmacy',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
        ],
      ),
    );
  }
}
