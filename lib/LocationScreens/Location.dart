import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  Position _currentPosition;
  String _currentAddress;
  TextEditingController _myController4 = TextEditingController();
  void initState() {
    super.initState();
    _myController4.addListener(() {
      setState(() {}); // setState every time text changes
    });
  }
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
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 131.0,
                    height: 24.0,
                    child: Text("Select Location",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff112027)
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: Center(
                child: Container(
                    width: 87.0,
                    height: 86.0,
                    child: Image.asset('asset/images/Loc.png')
                ),
              ),
            ),
            SizedBox(height: 05.0),
            Container(
              width: 335.0,
              height: 43.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(0.5),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(4.0),
              ),
              margin: EdgeInsets.all(12),
              child: Row(
                children: <Widget>[
                  if (_currentAddress != null)
                    Text(_currentAddress),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ),
                  new Expanded(
                    child: TextField(
                      controller: _myController4,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Location",
                        hintStyle: TextStyle(fontSize: 14.0,color: Color(0xffBEC4CA)),
                        isDense: true,
                      ),
                      onTap: () {
                      },
                      onChanged: (String data) {
                        setState(() {
                          _myController4.text = data;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
