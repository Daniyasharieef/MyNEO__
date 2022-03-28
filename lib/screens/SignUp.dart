import 'package:flutter/material.dart';
import 'package:my_neo/screens/OTPScreens.dart';
import 'package:my_neo/screens/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? IdType;
  String? mobileNumber;
  List<DropdownMenuItem<String>> items = [
  const   DropdownMenuItem(
      child:  Text('POSTAL DIGITAL ID'),
      value: 'POSTAL DIGITAL ID',
    ),const  DropdownMenuItem(
      child:  Text('PASSPORT'),
      value: 'PASSPORT',
    ),
   const DropdownMenuItem(
      child:  Text('DRIVING LICENSE'),
      value: 'DRIVING LICENSE',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                  color: Colors.white,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/logo.png',
                            height: 150,
                            width: 150),
                      const   SizedBox(
                          height: 30,
                        ),
                        Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  side: BorderSide(
                                    color:
                                        Colors.lightBlueAccent.withOpacity(0.3),
                                    width: 1,
                                  ),
                                ),
                                color: Colors.white,
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                elevation: 10,
                                child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                        const   SizedBox(height: 40),
                                          const Text(
                                            " Sign Up",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30),
                                          ),
                                         const  SizedBox(height: 30),
                                          TextField(
                                            onChanged: (value) {
                                              setState(() {});
                                            },
                                            style: const TextStyle(fontSize: 14),
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10.0),
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                ),  enabledBorder:  OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10.0),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                              ),),
                                                contentPadding:
                                                const EdgeInsets.fromLTRB(
                                                    15.0, 15.0, 15.0, 15.0),
                                                filled: true,
                                                hintText: "Name",
                                                hintStyle:const TextStyle(
                                                    color: Colors.black26)),
                                          ),const SizedBox(height:10), TextField(
                                            onChanged: (value) {
                                              setState(() {});
                                            },
                                            style: const TextStyle(fontSize: 14),
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10.0),
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                ),  enabledBorder:  OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10.0),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                              ),),
                                                contentPadding:
                                                const EdgeInsets.fromLTRB(
                                                    15.0, 15.0, 15.0, 15.0),
                                                filled: true,
                                                hintText: "Mobile Number",
                                                hintStyle:const TextStyle(
                                                    color: Colors.black26)),
                                          ),const SizedBox(height:10), TextField(
                                            onChanged: (value) {
                                              setState(() {});
                                            },
                                            style: const TextStyle(fontSize: 14),
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10.0),
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                ),  enabledBorder:  OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10.0),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                              ),),
                                                contentPadding:
                                             const    EdgeInsets.fromLTRB(
                                                    15.0, 15.0, 15.0, 15.0),
                                                filled: true,
                                                hintText: "Date Of Birth",
                                                hintStyle: const TextStyle(
                                                    color: Colors.black26)),
                                          ),const SizedBox(height:10), TextField(
                                            onChanged: (value) {
                                              setState(() {});
                                            },
                                            style: const TextStyle(fontSize: 14),
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10.0),
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                ),  enabledBorder:  OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10.0),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                              ),),
                                                contentPadding:
                                                const  EdgeInsets.fromLTRB(
                                                    15.0, 15.0, 15.0, 15.0),
                                                filled: true,
                                                suffixIcon:DropdownButtonHideUnderline(
                                                    child: DropdownButton(
                                                      items: items,
                                                      hint: Text('ID TYPE'),
                                                      value: IdType,
                                                      onChanged: (String? val) {
                                                        setState(() {
                                                          IdType = val;
                                                        });
                                                      },
                                                    )),
                                                hintText: "ID Type",
                                                hintStyle:const TextStyle(
                                                    color: Colors.black26)),
                                          ),const SizedBox(height:10), TextField(
                                            onChanged: (value) {
                                              setState(() {});
                                            },
                                            style: const TextStyle(fontSize: 14),
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10.0),
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                ),  enabledBorder:  OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10.0),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                              ),),
                                                contentPadding:
                                                const     EdgeInsets.fromLTRB(
                                                    15.0, 15.0, 15.0, 15.0),
                                                filled: true,
                                                hintText: "ID Number",
                                                hintStyle: const TextStyle(
                                                    color: Colors.black26)),
                                          ),const SizedBox(height:10), TextField(
                                            onChanged: (value) {
                                              setState(() {});
                                            },
                                            style: const TextStyle(fontSize: 14),
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10.0),
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                ),  enabledBorder:  OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10.0),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                              ),),
                                                contentPadding:
                                                const   EdgeInsets.fromLTRB(
                                                    5.0, 5.0, 5.0, 5.0),
                                                filled: true,
                                                suffix:RaisedButton(
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(8.0),
                                                    ),
                                                    onPressed: () {
                                                    },
                                                    color: Colors.white,
                                                    child: const Text(
                                                      "Upload",
                                                      style: TextStyle(color:Colors.blue),
                                                      textAlign: TextAlign.center,
                                                    )) ,
                                                hintText: "Upload ID Proof",
                                                hintStyle:const TextStyle(
                                                    color: Colors.black26)),
                                          ),const SizedBox(height:10), TextField(
                                            onChanged: (value) {
                                              setState(() {});
                                            },
                                            style: const TextStyle(fontSize: 14),
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10.0),
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                ),  enabledBorder:  OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10.0),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                              ),),
                                                contentPadding:
                                                const EdgeInsets.fromLTRB(
                                                    15.0, 15.0, 15.0, 15.0),
                                                filled: true,
                                                hintText: "Address Line 1",
                                                hintStyle: const TextStyle(
                                                    color: Colors.black26)),
                                          ),const SizedBox(height:10), TextField(
                                            onChanged: (value) {
                                              setState(() {});
                                            },
                                            style: const TextStyle(fontSize: 14),
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                ),
                                                enabledBorder:  OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(10.0),
                                                    borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                    ),),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10.0),
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                ),
                                                contentPadding:
                                               const EdgeInsets.fromLTRB(
                                                    15.0, 15.0, 15.0, 15.0),
                                                filled: true,
                                                hintText: "Address Line 2",
                                                hintStyle:const  TextStyle(
                                                    color: Colors.black26)),
                                          ),const SizedBox(height:10),

                                          Row(
                                            children: [
                                              SizedBox(
                                                  height: 48,
                                                  width: 140,
                                                  child: RaisedButton(
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(20.0),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(builder: (context) =>  OTPScreen( mobileNumber)));
                                                      },
                                                      color: Colors.blue,
                                                      child: const Text(
                                                        "Sign Up",
                                                        style: TextStyle(color: Colors.white),
                                                        textAlign: TextAlign.center,
                                                      ))),
                                              const  SizedBox(width:10),
                                              Image.asset('assets/images/leftarrow.png',
                                                  height: 150,
                                                  width: 120),
                                            ],
                                          ),
                                          Row(crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "Already have an account?",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: Colors.black54, fontSize: 15),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(context,
                                                    MaterialPageRoute(builder: (context) =>const LoginScreen()));},
                                                child:const  Text(
                                                  "Login",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      color: Colors.blue, fontSize: 15),
                                                ),
                                              ),
                                            ],
                                          )
                                        ]))))
                      ])),
            )));
  }
}
