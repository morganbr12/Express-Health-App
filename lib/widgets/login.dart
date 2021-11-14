import 'package:flutter/material.dart';




class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  void verifyPageFx(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      "/verify"
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Container(
                  margin: EdgeInsets.only(bottom: 70),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 47,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                  ),
                  ),
                ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 40, bottom: 30),
                        child: Text('Enter Phone Number',
                          style: TextStyle(
                              color: Colors.white,
                            fontSize: 18
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 40, right: 10),
                        child: Form(
                          onChanged: () {},
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: 40,
                                // margin: EdgeInsets.only(top: 100),
                                child: TextField(
                                  onTap: () {},
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      )
                                    ),
                                      prefixIcon: Icon(
                                          Icons.keyboard_arrow_down,
                                        color: Colors.white,
                                      ),
                                    // focusedBorder: InputD()
                                    // prefixIcon: Icons,
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                height: 40,
                                margin: EdgeInsets.only( left: 18),
                                child: TextField(
                                    onTap: () {},
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                    )
                                  // prefixIcon: Icons,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        InkWell(
          splashColor: Theme.of(context).primaryColor,
          onTap: () => verifyPageFx(context),
              overlayColor: MaterialStateProperty.all<Color>(Colors.black),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(color: Theme.of(context).primaryColor)
                ),
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
    );
  }
}
