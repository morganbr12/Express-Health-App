import 'dart:ui';

import 'package:flutter/material.dart';


import '../widgets/login.dart';
import '../login_screens/signup_screen.dart';

class LoginSignUpPage extends StatelessWidget {
  const LoginSignUpPage({Key key}) : super(key: key);

  void signUpPage(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) => SignUpScreenPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black87,
        body: Stack(
            children:[
              Container(
                width: double.maxFinite,
                height: double.maxFinite,
                child: Image.asset(
                  "assets/login_icon/45.png",
                  colorBlendMode: BlendMode.color,
                  centerSlice: Rect.largest,
                  filterQuality: FilterQuality.high,
                )
              ),
              Positioned.fill(
                child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: 5,
                    sigmaY: 5,
                ),
                  child: Container(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 0,
                      right: 20,
                      left: 0,
                      top: 80,),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).primaryColor,
                        ),
                      ),
                      onPressed: () => signUpPage(context),
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Login(),
                ],
              ),
            ],
        ),
    );
  }
}
