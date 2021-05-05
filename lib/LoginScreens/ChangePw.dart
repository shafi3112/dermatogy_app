import 'package:dermatology_app/LoginScreens/EmailVerificationPlaceHolder.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class changePassword extends StatefulWidget {
  @override
  _changePasswordState createState() => _changePasswordState();
}

class _changePasswordState extends State<changePassword> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController _pwController1 = TextEditingController();
  TextEditingController _pwController2 = TextEditingController();
  bool _passwordVisible = true;
  String password;

  void initState() {
    _passwordVisible = true;
    super.initState();
    _pwController1.addListener(() {
      setState(() {}); // setState every time text changes
    });
    _pwController2.addListener(() {
      setState(() {}); // setState every time text changes
    });
  }

  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    MaxLengthValidator(15, errorText: "Password should not be greater than 15 characters"),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: new IconButton(icon: ImageIcon(AssetImage('asset/images/back_button.png'),
            color: Color(0xff02122C), size: 35,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        titleSpacing: 0,
        title: Text("Change Password",
            style: TextStyle(fontFamily: 'Poppins-SemiBold',
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
              color: Color(0xff112027),
            )),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.0, 70.0, 20.0, 0.0),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 60.0),
                Text('New Password',
                  style: TextStyle(
                      color: Color(0xff02122C),
                      fontFamily: 'Poppins-Medium',
                      fontSize: 18.0),
                ),
                SizedBox(height: 5.0),
                TextFormField(
                    controller: _pwController1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Password',
                      suffixIcon: IconButton(
                          icon: Icon(_passwordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,),
                          onPressed: () {
                            setState(() {_passwordVisible ^= true;});
                          }),
                    ),
                    validator: passwordValidator,
                    obscureText: _passwordVisible,
                    onChanged: (val) => password = val,
                ),
                SizedBox(height: 15.0),
                Text('Confirm Password',
                  style: TextStyle(
                      color: Color(0xff02122C),
                      fontFamily: 'Poppins-Medium',
                      fontSize: 18.0),
                ),
                SizedBox(height: 5.0),
                TextFormField(
                    controller: _pwController2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Password',
                      suffixIcon: IconButton(
                          icon: Icon(_passwordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,),
                          onPressed: () {
                            setState(() {_passwordVisible ^= true;});
                          }),
                    ),
                    validator: (val) => MatchValidator(errorText: 'passwords do not match').validateMatch(val, password),
                    obscureText: _passwordVisible,
                    onChanged: (val) {// setState(() => password = val);
                    }
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
                        /*if (formkey.currentState.validate()) {
                          //PasswordChecker();
                        }*/
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => EmailVerificationPlaceHolder()),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
