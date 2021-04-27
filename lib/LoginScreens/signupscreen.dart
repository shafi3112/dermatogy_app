import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _passwordVisible = true;
  int OTP= 230346;
  TextEditingController _myController1 = TextEditingController();
  TextEditingController _myController2 = TextEditingController();
  TextEditingController _myController3 = TextEditingController();
  TextEditingController _myController4 = TextEditingController();
  TextEditingController _myController5 = TextEditingController();

  @override
  void initState() {
    _passwordVisible = true;
    super.initState();
    _myController1.addListener(() {
      setState(() {}); // setState every time text changes
    });
    _myController2.addListener(() {
      setState(() {}); // setState every time text changes
    });
    _myController3.addListener(() {
      setState(() {}); // setState every time text changes
    });
    _myController4.addListener(() {
      setState(() {}); // setState every time text changes
    });
    _myController5.addListener(() {
      setState(() {}); // setState every time text changes
    });
  }

  @override
  void dispose() {
    _myController1.dispose();
    _myController2.dispose();
    _myController3.dispose();
    _myController4.dispose();
    _myController5.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(
          child: Center(
              child: SizedBox(
                width: 35.0,
                height: 48.0,
                child: DecoratedBox(
                  child: Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: Color(0xff02122C)),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xff02122C)
                    ),
                  ),
                ),
          ),
          ),
        ),
        title: Text("Sign Up",
          style: TextStyle(
            color: Color(0xff112027),
            fontSize: 17,

          ),),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 0.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20.0),
              Text('Phone Number',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xff02122C)
                ),
              ),
              SizedBox(height: 05.0),
              Container(
                width: 335.0,
                height: 44.0,
                child: TextFormField(
                  controller: _myController1,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Number',
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Text('Email Id',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xff02122C)
                ),
              ),
              SizedBox(height: 05.0),
              Container(
                width: 335.0,
                height: 44.0,
                child: TextFormField(
                    controller: _myController2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Email',
                    ),
                    onChanged: (val) {
                      // setState(() => email = val);
                    }
                ),
              ),
              SizedBox(height: 30.0),
              Text('Set Password',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xff02122C)
                ),
              ),
              SizedBox(height: 05.0),
              Container(
                width: 335.0,
                height: 44.0,
                child: TextFormField(
                    obscureText: !_passwordVisible,
                    controller: _myController3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Password',
                      suffixIcon:
                      IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                              //print("Icon button pressed! state: $_passwordVisible"); //Confirmed that the _passwordVisible is toggled each time the button is pressed.
                            });
                          }),
                    ),
                    onChanged: (val) {
                      // setState(() => password = val);
                    }
                ),
              ),
              SizedBox(height: 30.0),
              Text('Confirm Password',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xff02122C)
                ),
              ),
              SizedBox(height: 05.0),
              Container(
                width: 335.0,
                height: 44.0,
                child: TextFormField(
                    obscureText: !_passwordVisible,
                    controller: _myController4,
                    validator: (value) {
                      if (value != _myController3.text) {
                        return 'Password is not matching';
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Confirm Password',
                      suffixIcon:
                      IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible =
                              !_passwordVisible; // print("Icon button pressed! state: $_passwordVisible"); //Confirmed that the _passwordVisible is toggled each time the button is pressed.
                            });
                          }),
                    ),
                    onChanged: (val) {
                      // setState(() => password = val);
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: ButtonTheme(
                  child: Container(
                    width: 335.0,
                    height: 50.0,
                    child: RaisedButton(
                      child: Text('PROCEED',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      textColor: Color(0xffFFFFFF),
                      onPressed: () {
                        if (_myController1.text.isEmpty || _myController2.text
                            .isEmpty || _myController3.text.isEmpty ||
                            _myController4.text.isEmpty)
                          print("please fill all the fields");
                        else {
                          showModalBottomSheet(
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40.0),
                                topLeft: Radius.circular(40.0),),
                            ),
                            builder: (context) => SingleChildScrollView(
                              physics: AlwaysScrollableScrollPhysics(),
                              child: Container(
                              constraints: BoxConstraints.expand(
                                width:375.0,
                                height: 419.0
                              ),
                                child: SingleChildScrollView(
                                  physics: AlwaysScrollableScrollPhysics(),
                                  child: Column(
                                    children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 36.5),
                                      child: Center(
                                          child: Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 60,
                                            child: Text("Enter OTP",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                                color: Color(0xff02122C)
                                              ),
                                            ),
                                          ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 32.5),
                                      child: Center(
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          child: Image.asset('asset/images/phone.png')
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 29.0),
                                      child: Center(
                                        child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          height: 60,
                                          child: Text("Please enter OTP sent to\n"
                                                      "(598) 4995515",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 14.0,
                                                color: Color(0xff02122C
                                              ),
                                             )
                                          ),
                                        ),
                                       ),
                                    ),
                                      Form(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              SizedBox(height: 40.0),
                                              Container(
                                                height: 46.0,
                                                width: 333.0,
                                                child: TextFormField(
                                                  controller: _myController5,
                                                  //keyboardType: TextInputType.phone,
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10.0, top: 32.0),
                                              child: buildTimer(),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 190.0,right: 10.0,top: 32.0,bottom: 0),
                                              child: Container(
                                                  child: Text("Resend OTP",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xffCCD0D5),
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),)),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 30.0),
                                          child: ButtonTheme(
                                            minWidth: 340.0,
                                            height: 60.0,
                                            buttonColor: (_myController5.text.isEmpty)
                                              ? Colors.blueGrey[100]
                                              : Color(0xff749BAD),
                                            child: Container(
                                              child: RaisedButton(
                                                child: Text('CONFIRM',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: new BorderRadius.circular(30.0),
                                                ),
                                                textColor: Colors.white,
                                                onPressed: () {
                                                  if (_myController5.text.isEmpty)
                                                    print("please Enter OTP");
                                                  else
                                                    {
                                                      Navigator.pop(context);
                                                        if (_myController5.text == "123456")
                                                          openAlertBox();
                                                        else
                                                          openErrorAlert();
                                                      }
                                                    }
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 30.0),
                                      ],
                                    ),
                                ),
                                  ),
                               ),
                            );

                           };
                        },
                      color: (_myController1.text.isEmpty ||
                          _myController2.text.isEmpty ||
                          _myController3.text.isEmpty ||
                          _myController4.text.isEmpty)
                          ? Colors.blueGrey[100]
                          : Color(0xff749BAD)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "The  Mobile Number will be verified with One Time Password",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff25414A)
                        ),)),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Existing User?",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xff749BAD)),),
                  GestureDetector(
                    onTap: () {
                      print(Text("sigin page")); //navigate to sigin page
                    },
                    child: Text(" Sign In", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Color(0xff749BAD)
                    ),),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text('Privacy Policy . Terms and Conditions',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 10.0,
                      color: Color(0xff749BAD)
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),

      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TweenAnimationBuilder(
          tween: Tween(begin: 60.0, end: 0.0),
          duration: Duration(seconds: 60),
          builder: (_, value, child) =>
              Text(
                "0m ${value.toInt()}s",
              ),
        ),
      ],
    );
  }
  openAlertBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(0.0),
                    topLeft:  Radius.circular(32.0),
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(32.0)
                ),
            ),
            contentPadding: EdgeInsets.only(top: 10.0),
            content: Container(
              width: 276.0,
              height: 337.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 48.0),
                    child: Center(
                      child: Container(
                          width: 48,
                          height: 47,
                          child: Image.asset('asset/images/success.png')
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Center(
                      child: Container(
                          width: 226.0,
                          height: 40,
                          child: Text("The OTP has been\n"
                              " succesfully verified",
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
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: Container(
                          width: 225.0,
                          height: 100.0,
                          child: Text("A verification mail has been\n"
                              " sent to your mail id.Kindly verify\n"
                              " it for proceeding.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xff02122C)
                            ),
                          )
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.only(top: 20.0,bottom: 13.0),
                      decoration: BoxDecoration(
                        color: Color(0xff749BAD),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(32.0)),
                      ),
                      child: Text("OKAY",
                        style: TextStyle(color: Color(0xffFFFFFF),fontWeight: FontWeight.bold,),
                        textAlign: TextAlign.center,

                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
  openErrorAlert() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(0.0),
                  topLeft:  Radius.circular(32.0),
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(32.0)
              ),
            ),
            contentPadding: EdgeInsets.only(top: 10.0),
            content: Container(
              width: 276.0,
              height: 290.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 43.0),
                    child: Center(
                      child: Container(
                          width: 28.3,
                          height: 44.3,
                          child: Image.asset('asset/images/error.png')
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Center(
                      child: Container(
                          width: 226.0,
                          height: 40,
                          child: Text("Invalid OTP",
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
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Center(
                      child: Container(
                          width: 225.0,
                          height: 60.0,
                          child: Text("OTP validation failed,\n""Please retry",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xff02122C)
                            ),
                          )
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      width: 276.0,
                      height: 57.7,
                      padding: EdgeInsets.only(top: 17.0,bottom: 15.0),
                      decoration: BoxDecoration(
                        color: Color(0XFF749BAD),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(32.0)),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context); //navigate to sigin page
                        },
                        child: Text("RETRY",
                          style: TextStyle(color: Color(0xffFFFFFF),fontWeight: FontWeight.bold,),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
