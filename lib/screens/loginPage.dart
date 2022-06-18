import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? _isVisible;

  @override
  void initState() {
    _isVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/top.jpg"), fit: BoxFit.fill)),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                child: TextField(
                    cursorColor: Colors.black,
                    cursorHeight: 25,
                    decoration: InputDecoration(
                      hintText: "Phone number or email address",
                      hintStyle: TextStyle(fontSize: 19, color: Colors.grey),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: TextField(
                  obscureText: !_isVisible!,
                  cursorColor: Colors.black,
                  cursorHeight: 25,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 19),
                      suffixIcon: IconButton(
                        icon: Icon(_isVisible!
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _isVisible = !_isVisible!;
                          });
                        },
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('Log In'),
                    onPressed: () {},
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgotten password?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Row(children: [
                Expanded(
                    child: Divider(
                  endIndent: 10,
                  color: Colors.grey,
                )),
                Text("OR"),
                Expanded(
                    child: Divider(
                  indent: 10,
                  color: Colors.grey,
                )),
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Create New Facebook Account",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
