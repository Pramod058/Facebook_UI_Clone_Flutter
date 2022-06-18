import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class Name_data extends StatelessWidget {
  const Name_data({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 1,
          backgroundColor: Colors.white,
          title: Center(child: Text("Join Facebook")),
          titleTextStyle: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
        body: Center(
          child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(children: [
                Text(
                  "What's your name?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter the name you use in real life.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  Expanded(
                    child: Text("First Name"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text("Last Name"),
                  ),
                ]),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 30,
                      child: TextFormField(
                        cursorColor: Colors.black,
                        textCapitalization: TextCapitalization.words,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.zero))),
                      ),
                    )),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: Container(
                      height: 30,
                      child: TextFormField(
                        cursorColor: Colors.black,
                        textCapitalization: TextCapitalization.words,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.zero))),
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => Mobile_Num()),
                          ),
                      child: Text("Next")),
                ),
              ])),
        ));
  }
}

class Mobile_Num extends StatelessWidget {
  const Mobile_Num({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 1,
          backgroundColor: Colors.white,
          title: Center(child: Text("Join Facebook")),
          titleTextStyle: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
        body: Center(
            child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(children: [
                  Text(
                    "Enter Your Mobile Number",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Enter the phone number where you can be reached.",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    child: Text("Mobile Number:"),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 30,
                    child: TextFormField(
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.zero))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Email_Input()));
                        },
                        child: Text("Next")),
                  )
                ]))));
  }
}

class Email_Input extends StatelessWidget {
  const Email_Input({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 1,
          backgroundColor: Colors.white,
          title: Center(child: Text("Join Facebook")),
          titleTextStyle: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
        body: Center(
            child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(children: [
                  Text(
                    "Enter Your Email Number",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Enter the email address where you can be reached.",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    child: Text("Email:"),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 30,
                    child: TextFormField(
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.zero))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Email_Input()));
                        },
                        child: Text("Next")),
                  )
                ]))));
  }
}

// class Name_data extends StatefulWidget {
//   const Name_data({Key? key}) : super(key: key);

//   @override
//   State<Name_data> createState() => _Name_data();
// }

// class _Name_data extends State<Name_data> {
//   TextEditingController dateinput = TextEditingController();
//   @override
//   void initState() {
//     dateinput.text = "";
//     super.initState();
//   }


//               SizedBox(
//                 height: 10,
//               ),
//               Center(
//                 child: Text(
//                   "Enter Mobile Number.",
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
              // Container(
              //   alignment: Alignment.topLeft,
              //   width: MediaQuery.of(context).size.width,
              //   child: Text("Mobile Number:"),
              // ),
              // SizedBox(
              //   height: 5,
              // ),
              // Container(
              //   height: 30,
              //   child: TextFormField(
              //     inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              //     cursorColor: Colors.black,
              //     keyboardType: TextInputType.number,
              //     decoration: InputDecoration(
              //         border: OutlineInputBorder(
              //             borderRadius: BorderRadius.all(Radius.zero))),
              //   ),
              // ),
//               SizedBox(
//                 height: 10,
//               ),
//               Center(
//                 child: Text(
//                   "Enter Date of Birth.",
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 alignment: Alignment.topLeft,
//                 width: MediaQuery.of(context).size.width,
//                 child: Text("DOB:"),
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               Container(
//                 height: 30,
//                 child: TextFormField(
//                   controller: dateinput,
//                   cursorColor: Colors.black,
//                   keyboardType: TextInputType.datetime,
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.zero))),
//                   onTap: () async {
//                     DateTime? pickedDate = await showDatePicker(
//                         context: context,
//                         initialDate: DateTime.now(),
//                         firstDate: DateTime(
//                             1900), //DateTime.now() - not to allow to choose before today.
//                         lastDate: DateTime(2025));
//                     if (pickedDate != null) {
//                       print(
//                           pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
//                       String formattedDate =
//                           DateFormat('yyyy-MM-dd').format(pickedDate);
//                       print(
//                           formattedDate); //formatted date output using intl package =>  2021-03-16
//                       //you can implement different kind of Date Format here according to your requirement
        
//                       setState(() {
//                         dateinput.text =
//                             formattedDate; //set output date to TextField value.
//                       });
//                     } else {
//                       print("Date is not selected");
//                     }
//                   },
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }