import 'dart:convert';
import 'package:dermatology_app/LoginScreens/ChangePw.dart';
import 'package:dermatology_app/LoginScreens/ForgotPw.dart';
import 'package:dermatology_app/LoginScreens/signupscreen.dart';
import 'package:flutter/gestures.dart';
import 'package:dermatology_app/LoginScreens/homePage.dart';
import 'package:dermatology_app/models/local_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:http/http.dart' as http;



class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool _passwordVisible = true;
  bool ignoring = false;
  bool _isfilled = false;
  bool biometricsAvailable = true;
  TextEditingController _idController = TextEditingController();
  TextEditingController _pwController = TextEditingController();

  void biometricsAvail() async {
    //bool biometricsAvailable = false;
    final isAvailable = await LocalAuthApi.hasBiometrics();
    if (isAvailable){
      setState(() {
        biometricsAvailable = true;
        //notify
      });
    }
  }

    void setIgnoring(bool newValue) {
    setState(() {
      ignoring = newValue;
    });
  }

  void initState() {
    _passwordVisible = true;
    super.initState();
    _idController.addListener(() {
      setState(() {}); // setState every time text changes
    });
    _pwController.addListener(() {
      setState(() {}); // setState every time text changes
    });
  }

  Future PasswordChecker() async{
    var APIURL=Uri.parse("http://65.0.55.180/skinmate/v1.0/api/init");
    Map mapeddata ={
      'id' : _idController.text,
      'password' : _pwController.text,
    };
    print("JSON DATA: ${mapeddata}");
    http.Response response= await http.post(APIURL,body:mapeddata);
    var data =jsonDecode(response.body);
    print("DATA:${data}");
    var code=(data[0]['code']);
    print(code);
    /*if(code==205)
    {
      final snackBar = SnackBar(
        content: Text('Invalid Username or password'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    else
      //Navigator.push(context, MaterialPageRoute(builder: (_) => OtpMainscreen()));
  }*/

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: new IconButton(
          icon: ImageIcon(AssetImage('asset/images/back_button.png'), color: Color(0xff02122C), size: 35,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        titleSpacing: 0,
        title: Text("Sign In",
            style: TextStyle(
              fontFamily: 'Poppins-SemiBold',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Color(0xff112027),
            )),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(40.0, 80.0, 40.0, 0.0),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 60.0),
                    Text(
                      'Phone Number / Email ID',
                      style: TextStyle( color: Color(0xff02122C),
                          fontFamily: 'Poppins-Medium',
                          fontSize: 18.0),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                        controller: _idController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Number or Email ID',),
                        validator: MultiValidator([
                          RequiredValidator(errorText: "* Required"),
                          EmailValidator(errorText: "Enter valid email id"),
                        ]),
                        onChanged: (val) {
                          // setState(() => email = val);
                        }),
                    SizedBox(height: 30.0),
                    Text(
                      'Password',
                      style: TextStyle( color: Color(0xff02122C),
                          fontFamily: 'Poppins-Medium',
                          fontSize: 18.0),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                        controller: _pwController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Password',
                          suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible ^= true;
                                  //print("Icon button pressed! state: $_passwordVisible");
                                });
                              }),
                        ),
                        validator: MultiValidator([
                          RequiredValidator(errorText: "* Required"),
                          //MinLengthValidator(6,
                           //   errorText: "Password should be atleast 6 characters"),
                          MaxLengthValidator(15,
                              errorText:
                              "Password should not be greater than 15 characters")
                        ]),
                        obscureText: _passwordVisible,
                        onChanged: (val) {
                          // setState(() => password = val);
                        }),
                    SizedBox(height: 25.0),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: RichText(
                        text: TextSpan(text: 'Forgot Password?',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) => changePassword()),
                              );
                            },
                          style: TextStyle( fontFamily: 'Poppins-SemiBold',
                            fontSize: 15.0,
                            color: Color(0xff749BAD),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50.0),
                    SizedBox(
                      width: double.infinity,
                      height: 60.0,
                      child: ElevatedButton(
                          child: Text('SIGN IN',),
                          style: ElevatedButton.styleFrom(
                            onSurface: Color(0xffCCD0D5),
                            primary: Color(0xff749BAD),
                            onPrimary: Colors.white,
                            textStyle: TextStyle(
                              fontFamily: 'Poppins-Bold',
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.blueGrey[100]),
                            ),
                          ),
                          onPressed: () async {
                            if (formkey.currentState.validate()) {
                              PasswordChecker();
                            }
                          }),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    IgnorePointer(
                      ignoring: ignoring,
                      child: Column(
                        children: <Widget>[
                          Center(
                              child: Text(
                            'Or Sign With',
                            style: TextStyle(
                              color: Color(0xff112027),
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          )),
                          SizedBox(height: 35.0),
                          Center(
                            child: IconButton(
                              iconSize: 100.0,
                              icon: biometricsAvailable ? ImageIcon(AssetImage('asset/images/active_fingerprint.png'),) : ImageIcon(AssetImage('asset/images/inactive_fingerprint.png'),),
                              tooltip: 'fingerprint access',
                              onPressed: () async {
                                final isAuthenticated = await LocalAuthApi.authenticate();
                                print('clicked');
                                if (isAuthenticated) {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(builder: (context) => homePage()),
                                  );
                                }
                                setState(() {
                                  //code goes here
                                });
                              },
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Center(
                              child: RichText(
                                text: TextSpan(
                                  text: 'New User? ',
                                  style: TextStyle(fontSize: 18, color: Color(0xff749BAD)),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Sign Up',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(builder: (context) => SignupScreen()),
                                            );
                                          },
                                        style: TextStyle(
                                          color: Color(0xff749BAD),
                                            fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                              ),
                          ),
                          SizedBox(
                            height: 45.0,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Privacy Policy . Terms and Conditions',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.0,
                                  color: Colors.blueGrey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
