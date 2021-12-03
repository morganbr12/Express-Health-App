import 'dart:ui';
import 'package:flutter/material.dart';


import '../login_screens/Login_signUp.dart';
import '../widgets/sign_up.dart';

class SignUpScreenPage extends StatefulWidget {
  const SignUpScreenPage({Key key}) : super(key: key);

  @override
  State<SignUpScreenPage> createState() => _SignUpScreenPageState();
}

class _SignUpScreenPageState extends State<SignUpScreenPage> {
  void signInPage(BuildContext ctx) {
    Navigator.of(ctx).popAndPushNamed(
      '/login_signUp'
    );
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
              child: Image.asset("assets/images/BG1.png",
                // colorBlendMode: BlendMode.color,
                fit: BoxFit.cover,
                // centerSlice: Rect.largest,
                // filterQuality: FilterQuality.high,
              )
          ),


          // back to SignIn page
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  // bottom: 150,
                  right: 20,
                  left: 0,
                  top: 80,),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).primaryColor,
                    ),
                  ),
                  onPressed: () => signInPage(context),
                  child: Text(
                    'Sign In',
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


          // SignUp fieldIn details
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SignUp(),
            ],
          )
        ],
      ),
    );
  }
}
