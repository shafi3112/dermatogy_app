import 'package:flutter/material.dart';

class LocationDisabled extends StatefulWidget {
  @override
  _LocationDisabledState createState() => _LocationDisabledState();
}

class _LocationDisabledState extends State<LocationDisabled> {
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
                    child: Image.asset('asset/images/LocationDisabled.png')
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 63.0),
              child: Center(
                child: Container(
                    width: 226.0,
                    height: 20,
                    child: Text("Location is disabled",
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
                    child: Text("Location should be enabled for the\n" "location based check-in through\n"
                      "process",
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
                    child: Text('ENABLE LOCATION',
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
