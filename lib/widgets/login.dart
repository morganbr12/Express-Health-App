import 'package:expresshealth/models/strings.dart';
import 'package:flutter/material.dart';




class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  void verifyPageFx(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      "/verify"
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Container(
                  margin: EdgeInsets.only(bottom: 70),
                  child: Text(
                    'Sign In',
                    style: titleWhite
                  ),
                ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Theme(
                        data: ThemeData(
                            brightness: Brightness.light
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: 40, bottom: 30),
                          child: Text(
                            'Enter Phone Number',
                            style: normalWhite
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 40, right: 10),
                        child: Form(
                          onChanged: () {},
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: 40,
                                // margin: EdgeInsets.only(top: 100),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.37,
                                  child: TextField(
                                    cursorColor: Colors.white,
                                    style: normalWhite,
                                    // textAlignVertical: TextAlignVertical.bottom,
                                    // autofocus: true,
                                    // showCursor: true,
                                    decoration: InputDecoration(
                                      prefixIcon: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                                        color: Colors.white,
                                      ),
                                      //  errorBorder: (borderSide: BorderSide(color: Colors.red)),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                height: 40,
                                margin: EdgeInsets.only( left: 18),
                               // padding: const EdgeInsets.only(top: 0, left: 10, bottom: 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.37,
                                  child: TextField(
                                    cursorColor: Colors.white,
                                    style: normalWhite,
                                    // textAlignVertical: TextAlignVertical.bottom,
                                    // showCursor: true,
                                    decoration: InputDecoration(
                                      //  errorBorder: (borderSide: BorderSide(color: Colors.red)),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        InkWell(
          splashColor: Theme.of(context).primaryColor,
          onTap: () => verifyPageFx(context),
              overlayColor: MaterialStateProperty.all<Color>(Colors.black),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(color: Theme.of(context).primaryColor)
                ),
                margin: EdgeInsets.only(top: 35),
                width: 150,
                padding: EdgeInsets.all(8),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
      ],
    );
  }
}
