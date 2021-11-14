import 'package:flutter/material.dart';


class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key key,
  }) : super(key: key);

  void selectCircleAvatar(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/user_info_page');
  }

  void selectSettingsPage(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/settings_screen');
  }

  void selectHelp(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/help_screen');
  }

  void selectSubscription(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/subscription');
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: InkWell(
                        onTap: () => selectCircleAvatar(context),
                        borderRadius: BorderRadius.circular(50),
                        splashColor:
                        Theme.of(context).primaryColor.withOpacity(0.3),
                        child: CircleAvatar(
                          maxRadius: 30,
                          backgroundColor: Colors.white70,
                          child: Icon(
                            Icons.person,
                            size: 34,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Text(
                            'Fredrick Dankwah ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          'Dentist',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 12,
                            ),
                            Padding(
                                padding: EdgeInsets.only(right: 3),
                                child: Text('Police Hospital,')),
                            Text(
                              'Cantonment',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {},
                leading: Text('Call Ambulance'),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {},
                leading: Text('Search Hospital Bed Space'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () => selectSubscription(context),
                leading: Text('Subscriptions'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () => selectSettingsPage(context),
                leading: Text('Settings'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () => selectHelp(context),
                leading: Text('Help'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
