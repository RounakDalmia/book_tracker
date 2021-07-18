import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegistrationPageState();
}

class RegistrationPageState extends State<RegistrationPage> {
  String password = "";
  final myController1 = new TextEditingController();
  final myController2 = new TextEditingController();
  final myController3 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(40, 140, 40, 140),
            child: Text(
              "REGISTER",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(56, 166, 167, 1),
                fontSize: 38,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.5,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 40,
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: TextFormField(
              controller: myController1,
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                hintText: "EmailID",
                prefixIcon: Icon(Icons.email_rounded),
              ),
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 40,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              controller: myController2,
              obscureText: true,
              onEditingComplete: () {
                password = myController2.text;
                print("Password set to: $password");
              },
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                hintText: "Set Password",
                prefixIcon: Icon(Icons.lock_rounded),
              ),
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 40,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              obscureText: true,
              controller: myController3,
              onEditingComplete: () {
                if (myController3.text == password)
                  print("Password confirmed");
                else
                  print("Password Mismatched");
              },
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                hintText: "Confirm Password",
                prefixIcon: Icon(Icons.lock_rounded),
              ),
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
