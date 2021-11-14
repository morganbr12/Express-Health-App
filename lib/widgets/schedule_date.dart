import 'package:flutter/material.dart';

class ScheduleDateTimeWithDoc extends StatelessWidget {
  const ScheduleDateTimeWithDoc({Key key}) : super(key: key);

  void selectSchedule(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('');
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectSchedule(context),
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor.withOpacity(0.3),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        child: Container(
          padding: const EdgeInsets.all(13),
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Theme.of(context).primaryColor),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: SizedBox(
                      height: 90,
                      width: 85,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          color: Colors.grey.withOpacity(0.3),
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(50),
                            splashColor:
                                Theme.of(context).primaryColor.withOpacity(0.2),
                            child: Image.asset(
                              'assets/images/sdf.jpg',
                              centerSlice: Rect.largest,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jennifer Ahiako',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Aged 36',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey),
                          ),
                          Text(
                            'Banker',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey),
                          ),
                          Text(
                            'Sam Street, Accra',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor:
                        Theme.of(context).primaryColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(50),
                    child: Card(
                      // margin: EdgeInsets.only(left: 70),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              color: Theme.of(context).primaryColor),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child:
                              Image.asset('assets/icons/video-camera.png'),
                        ),
                      ),
                    ),
                  ),
            ],
              ),
              InkWell(
                onTap: () {},
                splashColor: Theme.of(context).primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(8),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Theme.of(context).primaryColor),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        child: ClipRRect(
                          child: Icon(
                            Icons.medical_services_rounded,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'Tue, June 15, 10:00 - 10:30am',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
