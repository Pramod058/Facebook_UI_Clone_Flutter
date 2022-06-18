import 'package:facebook_clone/screens/Creat_Acc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_page_lite extends StatefulWidget {
  const Login_page_lite({Key? key}) : super(key: key);

  @override
  State<Login_page_lite> createState() => _Login_page_liteState();
}

class _Login_page_liteState extends State<Login_page_lite> {
  bool? _isPasswordVisible;
  @override
  void initState() {
    _isPasswordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Center(child: Text("Facebook")),
        titleTextStyle: TextStyle(fontSize: 16, color: Colors.grey.shade700),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 2, left: 2),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child:
                  Text("Phone number or email", style: TextStyle(fontSize: 15)),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey.shade200,
              height: 35,
              child: TextFormField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
              )),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text("Password", style: TextStyle(fontSize: 15)),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey.shade200,
              height: 35,
              child: TextFormField(
                  obscureText: !_isPasswordVisible!,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(_isPasswordVisible!
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible!;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero),
                    ),
                  )),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                child: Text("Log in"),
                onPressed: () {},
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                    style: ButtonStyle(alignment: Alignment.centerLeft),
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                    ))),
            Row(children: [
              Expanded(
                  child: Divider(
                endIndent: 10,
                color: Colors.grey,
              )),
              Text(
                "OR",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child: Divider(
                indent: 10,
                color: Colors.grey,
              )),
            ]),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              child: Text("Create New Account"),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color?>(Colors.green)),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Name_data()),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("English (US)",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      )),
                ),
              ],
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "नेपाली",
                  ),
                ),
              ],
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "हिन्दी",
                  ),
                ),
              ],
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "More languages...",
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
