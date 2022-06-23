import 'package:flutter/material.dart';

import 'auth_widgets/sign_up.dart';

class SignUpScreenPage extends StatefulWidget {
  const SignUpScreenPage({Key key}) : super(key: key);

  @override
  State<SignUpScreenPage> createState() => _SignUpScreenPageState();
}

class _SignUpScreenPageState extends State<SignUpScreenPage> {
  void _signInPage(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed('/login_signUp');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background image
          Container(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Image.asset(
                "assets/images/BG1.png",
                // colorBlendMode: BlendMode.color,
                fit: BoxFit.cover,
                // centerSlice: Rect.largest,
                // filterQuality: FilterQuality.high,
              )),

          // SignUp fieldIn details
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        onPressed: () => _signInPage(context),
                        child: Text('Sign In',
                            style: TextStyle(fontFamily: 'Nexa'))),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Flexible(
                flex: 3,
                child: SignUp(),
              ),
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
                            margin: const EdgeInsets.only(top: 87),
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
    );
  }
}
