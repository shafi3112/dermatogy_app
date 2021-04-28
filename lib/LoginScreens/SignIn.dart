import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isFingerprintAvail = false;
  bool _passwordVisible = true;
  bool ignoring = false;

  void setIgnoring(bool newValue) {
    setState(() {
      ignoring = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
                      icon: Icon(Icons.arrow_back_ios, color: Color(0xff02122C),),
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
        title: Text("Sign In",
          style: TextStyle(
            color: Color(0xff112027),
            fontSize: 17,
          ),),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(40.0, 80.0, 40.0, 0.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 60.0),
                    Text(
                      'Phone Number / Email ID',
                      style: TextStyle(fontSize: 12.0,color: Color(0xff02122C)),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Number or Email ID',
                        ),
                        onChanged: (val) {
                          // setState(() => email = val);
                        }),
                    SizedBox(height: 30.0),
                    Text(
                      'Password',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
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
                        obscureText: true,
                        onChanged: (val) {
                          // setState(() => password = val);
                        }),
                    SizedBox(height: 30.0),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.blueGrey[400],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 50.0),
                    SizedBox(
                      width: double.infinity,
                      height: 60.0,
                      child: ElevatedButton(
                          child: Text(
                            'SIGN IN',
                            // style: TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                            onPrimary: Colors.white,
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.blueGrey[100]),
                            ),
                          ),
                          onPressed: () async {}),
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
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              )),
                          SizedBox(height: 60.0),
                          Center(
                            child: IconButton(
                              iconSize: 100.0,
                              icon: ImageIcon(
                                AssetImage('asset/images/fingerprints.png'),
                              ),
                              tooltip: 'fingerprint access',
                              onPressed: () {
                                print('clicked');
                                setState(() {
                                  //code goes here
                                });
                              },
                            ),
                          ),
                          SizedBox(height: 40.0),
                          Center(
                            child: Text(
                              'New User? Sign Up',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
                            ),
                          ),
                          SizedBox(
                            height: 70.0,
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