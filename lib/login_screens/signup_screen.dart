import 'dart:ui';
import 'package:flutter/material.dart';


import '../login_screens/Login_signUp.dart';
import '../widgets/sign_up.dart';

class SignUpScreenPage extends StatelessWidget {
  const SignUpScreenPage({Key key}) : super(key: key);

  void signInPage(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(
      MaterialPageRoute(
          builder: (_) => LoginSignUpPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
              height: double.maxFinite,
              child: Image.asset("assets/login_icon/45.png",
                colorBlendMode: BlendMode.color,
                // fit: BoxFit.fitHeight,
                centerSlice: Rect.largest,
                filterQuality: FilterQuality.high,
              )
          ),
          Positioned.fill(child: BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5),
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
