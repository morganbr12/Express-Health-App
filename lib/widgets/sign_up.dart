import 'package:expresshealth/models/strings.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {

  const  SignUp({Key key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30, left: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // signUp
          Container(
            margin: EdgeInsets.only(bottom: 55),
            child: Text(
                'Sign up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 47,
              ),
            ),
          ),

          //first name field Input
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('First Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.37,
                      child: TextField(
                        cursorColor: Colors.white,
                        style: normalWhite,
                        textAlignVertical: TextAlignVertical.bottom,
                        autofocus: false,
                        showCursor: true,
                        controller: firstNameController,
                        onSubmitted: (value) {
                          firstNameController.text = value;
                        },
                        decoration: InputDecoration(
                        //  errorBorder: (borderSide: BorderSide(color: Colors.red)),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          contentPadding: const EdgeInsets.fromLTRB(4, 15, 4, 5)
                        ),
                      ),
                  ),
                ],
              ),

              // last Name field input
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Last Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.37,
                      child: TextField(
                        cursorColor: Colors.white,
                        style: normalWhite,
                        textAlignVertical: TextAlignVertical.bottom,
                        autofocus: false,
                        showCursor: true,
                        controller: lastNameController,
                        onSubmitted: (value) {
                          lastNameController.text = value;
                        },
                        decoration: InputDecoration(
                          //  errorBorder: (borderSide: BorderSide(color: Colors.red)),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                            contentPadding: const EdgeInsets.fromLTRB(4, 15, 4, 5)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // input number field
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 40, bottom: 20),
                child: Text(
                    'Enter your number',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: TextField(
                  cursorColor: Colors.white,
                  style: normalWhite,
                  textAlignVertical: TextAlignVertical.bottom,
                  autofocus: false,
                  showCursor: true,
                  controller: numberController,
                  onSubmitted: (value) {
                    numberController.text = value;
                  },
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                        onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_down_outlined),
                      color: Colors.white,
                    ),
                    //  errorBorder: (borderSide: BorderSide(color: Colors.red)),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                      contentPadding: const EdgeInsets.fromLTRB(4, 15, 4, 5)
                  ),
                ),
              ),


              Container(
                width: MediaQuery.of(context).size.width * 0.45,
                margin: EdgeInsets.only(left: 30),
                child:Container(
                  width: MediaQuery.of(context).size.width * 0.41,
                  child: TextField(
                    cursorColor: Colors.white,
                    style: normalWhite,
                    textAlignVertical: TextAlignVertical.bottom,
                    autofocus: false,
                    showCursor: true,
                    decoration: InputDecoration(
                      //  errorBorder: (borderSide: BorderSide(color: Colors.red)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                        contentPadding: const EdgeInsets.fromLTRB(4, 15, 4, 5)
                    ),
                  ),
                ),
              ),
            ],
          ),


          // button field
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Theme.of(context).primaryColor)
              ),
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 50),
              width: 170,
              child: Text(
                'Sign Up',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
