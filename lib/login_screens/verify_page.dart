import 'dart:ui';
import 'package:flutter/material.dart';

import '../widgets/verify.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({Key key}) : super(key: key);
  
  void backLogin(BuildContext ctx){
    Navigator.of(ctx).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Image.asset("assets/images/BG1.png",
                colorBlendMode: BlendMode.color,
                // fit: BoxFit.fitHeight,
                centerSlice: Rect.largest,
                // filterQuality: FilterQuality.high,
              )
          ),
          // Positioned.fill(child: BackdropFilter(
          //   filter: ImageFilter.blur(
          //       sigmaX: 5,
          //       sigmaY: 5),
          //   child: Container(
          //     color: Color.fromRGBO(0, 0, 0, 0.5),
          //     ),
          //   ),
          // ),
          Row(
            children: [
              InkWell(
                onTap: () => backLogin(context),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.only(
                    top: 70,
                    left: 20,
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 25,
                  ),
                ),
              )
            ],
          ),
          Center(
            child: Verify(),
          )
        ],
      )
    );
  }
}
