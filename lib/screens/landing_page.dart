import 'package:facebook_clone/screens/LiteLogin.dart';
import 'package:facebook_clone/screens/firstPage.dart';
import "package:flutter/material.dart";

class landing_page extends StatelessWidget {
  const landing_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Row(
            children: [
              SizedBox(
                width: 50,
              ),
              ElevatedButton(
                  child: Text(" Fb Lite Login"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Login_page_lite()));
                  }),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  child: Text("Facebook Login"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => FirstPage()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
