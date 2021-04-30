import 'package:flutter/material.dart';

class NotificationDisabled extends StatefulWidget {
  @override
  _NotificationDisabledState createState() => _NotificationDisabledState();
}

class _NotificationDisabledState extends State<NotificationDisabled> {
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
              padding: const EdgeInsets.only(top: 152.0),
              child: Center(
                child: Container(
                    width: 170.0,
                    height: 170.0,
                    child: Image.asset('asset/images/NotificationDisabled.png')
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 63.0),
              child: Center(
                child: Container(
                    width: 226.0,
                    height: 40,
                    child: Text("Notifications is disabled",
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
              padding: const EdgeInsets.only(top: 10.0),
              child: Center(
                child: Container(
                    width: 275.0,
                    height: 60.0,
                    child: Text("To recieve notifications about\n" "your appointments and Walk-ins it should\n" "be enabled",
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
                    child: Text('ENABLE NOTIFICATION',
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
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Center(
                child: Container(
                    width: 88.0,
                    height: 42,
                    child: Text("NO THANKS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff749BAD)
                      ),
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
