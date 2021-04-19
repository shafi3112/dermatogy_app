import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    bool _passwordVisible = true;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
              child: Image.asset('asset/images/logo3.jpg')),
        ),
        title: Text("Sign Up",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,

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
                    fontSize: 18.0
                ),
              ),
              SizedBox(height: 05.0),
              Container(
                height: 50.0,
              child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Number',
                  ),
                  onChanged: (val) {
                    // setState(() => email = val);
                  }
              ),
              ),
              SizedBox(height: 30.0),
              Text('Email Id',
                style: TextStyle(
                    fontSize: 18.0
                ),
              ),
              SizedBox(height: 05.0),
              Container(
                height: 50.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Email',
                  ),
                  onChanged: (val) {
                    // setState(() => email = val);
                  }
                ),
              ),
              SizedBox(height: 30.0),
              Text('Set Password',
                style: TextStyle(
                    fontSize: 18.0
                ),
              ),
              SizedBox(height: 05.0),
              Container(
                height: 50.0,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    labelText: 'Enter Password',
                    suffixIcon:
                    IconButton(
                        icon: Icon(
                          _passwordVisible ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible ^= true;
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
                    fontSize: 18.0
                ),
              ),
              SizedBox(height: 05.0),
              Container(
                height: 50.0,
              child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                    suffixIcon:
                    IconButton(
                        icon: Icon(
                          _passwordVisible ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible ^= true;
                            //print("Icon button pressed! state: $_passwordVisible"); //Confirmed that the _passwordVisible is toggled each time the button is pressed.
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
                  minWidth: MediaQuery.of(context).size.width,
                  height: 60.0,
                  buttonColor: Colors.blueGrey[100],
                  child: Container(
                    child: RaisedButton(
                      child: Text('PROCEED',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.blueGrey[100]),
                      ),
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text("The  Mobile Number will be verified with One Time Password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black
                      ),)),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Existing User?",style: TextStyle(fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                    color: Colors.blueGrey[400]),),
                GestureDetector(
                  onTap: () {
                    print(Text("sigin page"));//navigate to sigin page
                  },
                child: Text(" Sign In", style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blueGrey
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
                  fontSize: 13.0,
                  color: Colors.blueGrey
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
}
