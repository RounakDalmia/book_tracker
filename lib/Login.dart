import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  String password = "";
  final myController1 = new TextEditingController();
  final myController2 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(40, 140, 40, 140),
            child: Text(
              "Login",
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
            height: 50,
            margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
            child: TextFormField(
              controller: myController1,
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                hintText: "EmailID",
                prefixIcon: Icon(Icons.person),
              ),
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.fromLTRB(10, 30, 10, 30),
            child: TextField(
              obscureText: true,
              controller: myController2,
              onEditingComplete: () {
                password = myController2.text;
                print("Password given: $password");
              },
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                hintText: "Password",
                prefixIcon: Icon(Icons.lock_rounded),
              ),
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          Text("Forgot Password?"),
        ],
      ),
    );
  }
}
