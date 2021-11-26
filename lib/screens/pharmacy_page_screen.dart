import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PharmacyPageScreen extends StatelessWidget {

  const PharmacyPageScreen(
      {Key key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
        SizedBox(
          height: 8,
        ),
        Container(
          alignment: Alignment.center,
          child: Container(
            width: 380,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    width: 1,
                    color: Theme.of(context).primaryColor,
                    style: BorderStyle.solid,
                ),
            ),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 15, left: 18),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                          CupertinoIcons.camera_circle_fill,
                        color: Color.fromRGBO(39, 169, 208, 0.4),
                        size: 31,
                      ),
                  ),
                  hintText: 'search drug/pharmacy',
                alignLabelWithHint: true,
                hintStyle: TextStyle(
                    color: Color.fromRGBO(39, 169, 208, 0.4),
                  fontSize: 13,
                  letterSpacing: 1.0
                ),
              ),
              onChanged: (value) {},
            ),
          ),
        ),
        
        Container(
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/drugs.png'),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 170,
                alignment: Alignment.center,
                child: Text(
                    'Search for Drugs or Pharmacy in the search bar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              )
            ],
          ),
        )
      ],
      ),
    );
  }
}


