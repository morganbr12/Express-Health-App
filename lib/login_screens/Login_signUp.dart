import 'dart:ui';


import 'package:flutter/material.dart';



import '../widgets/login.dart';

class LoginSignUpPage extends StatelessWidget {
  const LoginSignUpPage({Key key}) : super(key: key);

  void signUpPage(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed('/signup_page');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black87,
        body: SafeArea(
          top: false,
          bottom: false,
          child: Stack(
              children:[
                Container(
                  width: double.maxFinite,
                  height: double.infinity,
                  child: Image.asset(
                    "assets/images/BG1.png",
                    colorBlendMode: BlendMode.color,
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  )
                ),
                // Container(
                //   decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //           colors: [
                //             Color.fromRGBO(0, 0, 0, 0.6),
                //             Color.fromRGBO(0, 0, 0, 0.7),
                //           ]
                //       )
                //   ),
                // ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Login(),
                  ],
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
                              style: TextStyle(fontFamily: 'Nexa')
                          )
                      ),
                    ),
                  ],
                ),
              ],
          ),
        ),
    );
  }
}
