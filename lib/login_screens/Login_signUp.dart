import 'dart:ui';

import 'package:flutter/material.dart';

import 'auth_widgets/login.dart';

class LoginSignUpPage extends StatefulWidget {
  const LoginSignUpPage({Key key}) : super(key: key);

  @override
  State<LoginSignUpPage> createState() => _LoginSignUpPageState();
}

class _LoginSignUpPageState extends State<LoginSignUpPage> {
  void signUpPage(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed('/signup_page');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black87,
      body: Center(
        child: Container(
          child: Stack(
            children: [
              Container(
                  width: double.maxFinite,
                  height: double.infinity,
                  child: Image.asset(
                    "assets/images/BG1.png",
                    colorBlendMode: BlendMode.color,
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.055,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          // bottom: 50,
                          right: 20,
                          left: 0,
                        ),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Theme.of(context).primaryColor,
                              ),
                            ),
                            onPressed: () => signUpPage(context),
                            child: Text('Create Account',
                                style: TextStyle(fontFamily: 'Nexa'))),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  Flexible(
                    flex: 2,
                    child: Login(),
                  ),

                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.07,
                  // ),

                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                          bottom: 0, right: 20, left: 20, top: 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 140,
                              height: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Theme.of(context).primaryColor),
                                  color: Colors.black.withOpacity(0.5)),
                              child: Container(
                                margin: const EdgeInsets.only(top: 40),
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  'Patient',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 180,
                              height: 140,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Theme.of(context).primaryColor),
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.5)),
                              child: Container(
                                margin: const EdgeInsets.only(top: 90),
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  'Doctor/Pharmacist',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.055,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
