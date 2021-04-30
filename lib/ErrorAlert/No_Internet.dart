import 'package:flutter/material.dart';

class NoInternet extends StatefulWidget {
  @override
  _NoInternetState createState() => _NoInternetState();
}

class _NoInternetState extends State<NoInternet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Container(
          width: 375.0,
          height: 812.0,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 187.0),
                child: Center(
                  child: Container(
                      width: 62.0,
                      height: 100.0,
                      child: Image.asset('asset/images/NetIssue.png')
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 63.0),
                child: Center(
                  child: Container(
                      width: 226.0,
                      height: 20,
                      child: Text("No Internet Connection",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff112027)
                        ),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Center(
                  child: Container(
                      width: 275.0,
                      height: 60.0,
                      child: Text("You do not have an active internet\n" "connection, please "
                          "check your internet\n" "connection and retry",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xff02122C)
                        ),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: ButtonTheme(
                  buttonColor: Color(0xff749BAD),
                  child: Container(
                    width: 335.0,
                    height: 50.0,
                    child: RaisedButton(
                        child: Text('RETRY',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        textColor: Color(0xffFFFFFF),
                        onPressed: () {},
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
