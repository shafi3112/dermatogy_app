import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ServerIssue extends StatefulWidget {
  @override
  _ServerIssueState createState() => _ServerIssueState();
}

class _ServerIssueState extends State<ServerIssue> {
  @override
  Widget build(context) {
    return Scaffold(
        body: ServerIssueAlert(context)
    );
  }
  Widget ServerIssueAlert(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Navigator.pop(context);
      showDialog(
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
                height: 296.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 43.0),
                      child: Center(
                        child: Container(
                            width: 40.0,
                            height: 40.0,
                            child: Image.asset('asset/images/ServerIssue.png')
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Center(
                        child: Container(
                            width: 226.0,
                            height: 20,
                            child: Text("Server Issue",
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
                            width: 225.0,
                            height: 40.0,
                            child: Text("Unable to fetch loan details due\n" "to server issue, please retry",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xff02122C)
                              ),
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 33.0),
                    InkWell(
                      child: Container(
                        width: 276.0,
                        height: 50.0,
                        padding: EdgeInsets.only(top: 20.0,bottom: 15.0),
                        decoration: BoxDecoration(
                          color: Color(0XFF749BAD),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(32.0)),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
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
    });
  }
}

