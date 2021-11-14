// import 'dart:ui';
//
// import 'package:flutter/material.dart';
//
// class BackgroundImage extends StatelessWidget {
//   const BackgroundImage({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:
//         Container(
//             height: double.maxFinite,
//             child: Image.asset("assets/login_icon/fit.jpg",
//               colorBlendMode: BlendMode.color,
//               // fit: BoxFit.fitHeight,
//               centerSlice: Rect.largest,
//               filterQuality: FilterQuality.high,
//             )
//         ),
//         Positioned.fill(child: BackdropFilter(
//           filter: ImageFilter.blur(
//               sigmaX: 6,
//               sigmaY: 3),
//           child: Container(
//             color: Color.fromRGBO(0, 0, 0, 0.1),
//           ),
//         ),
//         ),
//     );
//   }
// }

