import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:form_field_validator/form_field_validator.dart';

class forgotPassword extends StatefulWidget {
  @override
  _forgotPasswordState createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController _idController = TextEditingController();
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
        title: Text("Forgot Password",
            style: TextStyle(
              fontFamily: 'Poppins-SemiBold',
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
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
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
                  SizedBox(height: 50.0),
                  SizedBox(
                    width: double.infinity,
                    height: 60.0,
                    child: ElevatedButton(
                        child: Text('CONTINUE',),
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
                        onPressed: ()  {
                          /*SchedulerBinding.instance.addPostFrameCallback((_) {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (_) => OtpMainscreen()));
                          }); */
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
