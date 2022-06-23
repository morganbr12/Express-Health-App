import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

import '../../models/strings.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey _key = GlobalKey();

  void verifyPageFx(BuildContext ctx) {
    Navigator.of(ctx).pushNamed("/verify");
  }

  final TextEditingController numberController = TextEditingController();

  void _showCountryCode() {
    CountryCodePicker(
      initialSelection: "GH",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 40),
            child: Text('Sign In', style: titleWhite),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Theme(
                    data: ThemeData(brightness: Brightness.light),
                    child: Container(
                      margin: EdgeInsets.only(left: 40, bottom: 20),
                      child: Text('Enter Phone Number', style: normalWhite),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 25, right: 25),
                    child: Form(
                      key: _key,
                      onChanged: () {},
                      child: Row(
                        children: [
                          Container(
                            // width: MediaQuery.of(context).size.width * 0.3,
                            height: 70,
                            margin: EdgeInsets.only(top: 15),
                            child: Container(
                              // width: MediaQuery.of(context).size.width * 0.2,
                              // child: TextField(
                              //   cursorColor: Colors.white,
                              //   style: normalWhite,
                              //   // textAlignVertical: TextAlignVertical.bottom,
                              //   // autofocus: true,
                              //   // showCursor: true,
                              //   decoration: InputDecoration(
                              //     prefixIcon: CountryCodePicker(),
                              //     //  errorBorder: (borderSide: BorderSide(color: Colors.red)),
                              //     enabledBorder: UnderlineInputBorder(
                              //       borderSide: BorderSide(color: Colors.white),
                              //     ),
                              //     focusedBorder: UnderlineInputBorder(
                              //       borderSide: BorderSide(color: Colors.white),
                              //     ),
                              //       contentPadding: const EdgeInsets.fromLTRB(4, 10, 4, 8)
                              //   ),
                              // ),

                              child: CountryCodePicker(
                                initialSelection: "Ghana",
                                showFlag: false,
                                showDropDownButton: true,
                                dialogSize: Size.infinite,
                                textStyle: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 40,
                            margin: EdgeInsets.only(left: 0),
                            // padding: const EdgeInsets.only(top: 0, left: 10, bottom: 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: TextField(
                                cursorColor: Colors.white,
                                style: normalWhite,
                                keyboardType: TextInputType.number,
                                // textAlignVertical: TextAlignVertical.bottom,
                                // showCursor: true,
                                controller: numberController,
                                decoration: InputDecoration(
                                  //  errorBorder: (borderSide: BorderSide(color: Colors.red)),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(4, 20, 4, 8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(
                splashColor: Theme.of(context).primaryColor,
                onTap: () => verifyPageFx(context),
                overlayColor: MaterialStateProperty.all<Color>(Colors.black),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      border:
                          Border.all(color: Theme.of(context).primaryColor)),
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
          ),
        ],
      ),
    );
  }
}
