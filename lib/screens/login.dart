
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:my_neo/screens/OTPScreens.dart';
import 'package:http/http.dart' as http;
import 'SignUp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController mobileNumber = TextEditingController();
  bool _autovalidate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: formkey,
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png', height: 150, width: 150),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                      // if you need this
                      side: BorderSide(
                        color: Colors.lightBlueAccent.withOpacity(0.3),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                        const    SizedBox(height: 40),
                            const Text(
                              " Login",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              " Enter your mobile number,we will send you the OTP to verify",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 15),
                            ),
                           const  SizedBox(height: 30),
                            TextFormField(
                              controller: mobileNumber,
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                setState(() {});
                              },
                              style: const TextStyle(fontSize: 14),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.fromLTRB(
                                      15.0, 15.0, 15.0, 15.0),
                                  filled: true,
                                  hintText: "Enter mobile Number",
                                  hintStyle:
                                      const TextStyle(color: Colors.black26)),
                            validator   :  MultiValidator([
                                  RequiredValidator(
                                      errorText:
                                      "* Required Field"),
                                  MaxLengthValidator(10,
                                      errorText:
                                      "Mobile Number should be 10 characters")
                                ])
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(
                                    height: 48,
                                    width: 140,
                                    child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        onPressed: ()  {
                                          print(mobileNumber.text);
                                          if (formkey.currentState!
                                              .validate()) {

                                            login();}
                                          },
                                        color: Colors.blue,
                                        child: const Text(
                                          "Login",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ))),
                               const  SizedBox(width:10),
                                Image.asset('assets/images/leftarrow.png', height: 150, width: 120),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Don't have an account?",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 15),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>const  SignUp()));
                                  },
                                  child: const Text(
                                    "Sign Up",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 15),
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Future<void> login() async {
    if (mobileNumber.text.isNotEmpty ) {
      Map data = {
        'mobileNumber': mobileNumber.text
      };
      var body = json.encode(data);
      var response = await http.post(
          Uri.parse("http://164.90.254.9:4000/myneo/api/v1/auth"),
          headers: {"Content-Type": "application/json"},
          body:body);
      print(response.body);
      print(response.statusCode);
      if (response.statusCode == 200) {
        print("null");
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>  OTPScreen(mobileNumber.text ,)));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("You Don't have a Account Please Sign UP "),
        ));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Empty field"),
      ));
    }
  }
}
