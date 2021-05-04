import 'package:flutter/material.dart';

class Gender {
  String name;
  String imageUrl;
  bool isSelected;

  Gender(this.name, this.imageUrl, this.isSelected);
}

class CustomRadio extends StatefulWidget {
  Gender _gender;

  CustomRadio(this._gender);

  @override
  _CustomRadioState createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    String _backgroundImage;
    String setImage() {
      if(widget._gender.isSelected == true)
        _backgroundImage = "asset/images/checked.png";
      else
        _backgroundImage = "asset/images/unchecked.png";
      return _backgroundImage;
    }
    return Card(
        child: Container(
          height: 95.0,
          width: 101.0,
          decoration: BoxDecoration(
            border: Border.all(color: widget._gender.isSelected ? Color(0xFF143A4C) : Color(0xFFE5E7E9)),
            color: widget._gender.isSelected ? Color(0xFFB2BFB8) : Color(0xFFFFFFFF),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(0.0),
                topLeft:  Radius.circular(20.0),
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(20.0)
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment. spaceEvenly,
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                      child: Container(
                          width: 30,
                          height: 30,
                          child: Image.asset(setImage()))
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom:8.0,right:20.0,),
                child: Center(
                child: Image(
                  image: AssetImage(widget._gender.imageUrl),
                  width: 40.0,
                  height: 30.0,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(right:20.0),
                child: Text(
                widget._gender.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                    color: Color(0xff02122C)
                ),),
              ),
            ],
          ),
        ));
  }
}
//Row(
//                   mainAxisAlignment: MainAxisAlignment. spaceEvenly,
//                   children: [
//                     Container(
//                       width: 101.0,
//                       height: 91.0,
//                       child: Column(
//                         children: [
//                           SizedBox(height: 15.0),
//                           Center(
//                             child: Container(
//                                 width: 26.0,
//                                 height: 36.0,
//                                 child: Image.asset('asset/images/male.png'),),
//                           ),
//                           SizedBox(height: 10.0),
//                           Center(
//                             child: Container(
//                                 width: 30.0,
//                                 height: 17.0,
//                                 child: Text("Male",
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 12.0,
//                                       color: Color(0xff02122C)
//                                   ),)),
//                           ),
//                         ],
//                       ),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Color(0xff143A4C)),
//                         color: Color(0xffB2BFB8),
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(0.0),
//                             topLeft:  Radius.circular(20.0),
//                             bottomLeft: Radius.circular(0.0),
//                             bottomRight: Radius.circular(20.0)
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 101.0,
//                       height: 91.0,
//                       child: Column(
//                         children: [
//                           SizedBox(height: 15.0),
//                           Center(
//                             child: Container(
//                               width: 23.0,
//                               height: 35.0,
//                               child: Image.asset('asset/images/female.png'),),
//                           ),
//                           SizedBox(height: 10.0),
//                           Center(
//                             child: Container(
//                                 width: 46.0,
//                                 height: 17.0,
//                                 child: Text("Female",
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 12.0,
//                                       color: Color(0xff02122C)
//                                   ),)),
//                           ),
//                         ],
//                       ),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Color(0xff143A4C)),
//                         color: Color(0xffB2BFB8),
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(0.0),
//                             topLeft:  Radius.circular(20.0),
//                             bottomLeft: Radius.circular(0.0),
//                             bottomRight: Radius.circular(20.0)
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 101.0,
//                       height: 91.0,
//                       child: Column(
//                         children: [
//                           SizedBox(height: 15.0),
//                           Center(
//                             child: Container(
//                               width: 30.0,
//                               height: 35.0,
//                               child: Image.asset('asset/images/other.png'),),
//                           ),
//                           SizedBox(height: 10.0),
//                           Center(
//                             child: Container(
//                                 width: 35.0,
//                                 height: 17.0,
//                                 child: Text("Other",
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 12.0,
//                                       color: Color(0xff02122C)
//                                   ),)),
//                           ),
//                         ],
//                       ),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Color(0xff143A4C)),
//                         color: Color(0xffB2BFB8),
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(0.0),
//                             topLeft:  Radius.circular(20.0),
//                             bottomLeft: Radius.circular(0.0),
//                             bottomRight: Radius.circular(20.0)
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
