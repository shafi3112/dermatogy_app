import 'package:flutter/material.dart';

class SetProfile extends StatelessWidget {
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
        title: Text("Set Profile",
          style: TextStyle(
            color: Color(0xff112027),
            fontSize: 17,

          ),),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0.0,
      ),
    );
  }
}
