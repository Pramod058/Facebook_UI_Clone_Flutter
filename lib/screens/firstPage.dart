import 'package:facebook_clone/screens/loginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';

import 'LiteLogin.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
              child: Icon(
            Icons.facebook,
            size: 65,
            color: Colors.blue,
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
          ),
          Container(
            height: 70,
            color: Color.fromARGB(255, 238, 220, 220),
            child: Row(
              children: [
                Icon(
                  Icons.face_retouching_natural,
                  size: 50,
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Swikar Acharya",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.add_box,
                size: 35,
                color: Colors.blue,
              ),
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => LoginPage()),
                ),
                child: Text(
                  "Log in to another account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.search,
                size: 35,
                color: Colors.blue,
              ),
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Login_page_lite()),
                ),
                child: Text(
                  "Lite Login Page",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.blue.shade50),
              child: Text(
                "CREATE A NEW FACEBOOK ACCOUNT",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.blue),
              ))
        ],
      ),
    ));
  }
}
