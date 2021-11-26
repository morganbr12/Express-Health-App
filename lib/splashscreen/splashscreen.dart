import 'dart:async';


import 'package:flutter/material.dart';
import '../login_screens/Login_signUp.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),
            () => Navigator.of(context).pushReplacementNamed('/login_signUp'),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 169, 214, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/logo/E-Health.png',
              alignment: Alignment.center,
              scale: 2,
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                  Color.fromRGBO(255, 255, 255, 1)),
            )
          ],
        ),
      ),
    );
  }
}
