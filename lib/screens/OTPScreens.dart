
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:pin_code_text_field/pin_code_text_field.dart';
import '../Dashboard/Dashboard.dart';
import 'SignUp.dart';

class OTPScreen extends StatefulWidget {
String? mobileNumber;

  OTPScreen(this.mobileNumber);

  @override
  State<OTPScreen> createState() => _OTPScreenState(
    mobileNumber);
}

class _OTPScreenState extends State<OTPScreen> {
  String? mobileNumber;
  _OTPScreenState(this.mobileNumber);
  TextEditingController otpController =TextEditingController();
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
                     height: 150, width: 150),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40), // if you need this
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
                            const SizedBox(height: 40),
                            const Text(
                              " OTP",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              " Enter 4 digit verification code sent to your mobile number",
                              textAlign: TextAlign.start,
                              style:
                              TextStyle(color: Colors.black38, fontSize: 15),
                            ),
                           const  SizedBox(height: 30),
                      PinCodeTextField(
                        autofocus: true,
                        controller: otpController,
                        maxLength: 4,
                        pinBoxWidth: 50,
                        pinBoxHeight: 54,
                        pinBoxRadius: 15,
                        pinBoxBorderWidth: 1,
                        hasTextBorderColor: Colors.white10,
                        defaultBorderColor: Colors.white,
                        pinBoxColor: Colors.black12,
                        wrapAlignment: WrapAlignment.spaceAround,
                        pinBoxOuterPadding:const EdgeInsets.all(10),
                        pinBoxDecoration:
                        ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                        pinTextStyle: const TextStyle(fontSize: 15.0),

                        keyboardType: TextInputType.number,
                 ),
                          const   SizedBox(height: 10),
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
                                        generate();
                                        },
                                      color: Colors.blue,
                                      child: const Text(
                                        "Verify OTP",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                                Image.asset('assets/images/leftarrow.png',
                                    height: 150, width: 130),
                              ],
                            ),
                            Row(crossAxisAlignment: CrossAxisAlignment.center,
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
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) =>const  SignUp()))
                                    ;
                                  },
                                  child:const  Text(
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
    );
  }
  Future<void> generate() async {
    if (otpController.text.isNotEmpty) {
      Map data = {
          "mobileNumber": mobileNumber,  "type": "LOGIN"
      };
      var body = json.encode(data);
      var response = await http.post(
          Uri.parse("http://164.90.254.9:4000/myneo/api/v1/otp/generate"),
          headers: {"Content-Type": "application/json"},
          body:body);
      print(response.body);
      print(response.statusCode);
      if (response.statusCode == 200) {
        print("null");
       verify();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Invalid Number"),
        ));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Empty field"),
      ));
    }
  }
  Future<void> verify() async {
    if (otpController.text.isNotEmpty) {
      Map data ={  "mobileNumber":mobileNumber,  "type": "LOGIN",  "code": otpController.text};
      var body = json.encode(data);
      var response = await http.post(
          Uri.parse("http://164.90.254.9:4000/myneo/api/v1/otp/verify"),
          headers: { "accept":"application/json",
            "Content-Type": "application/json"},
          body:body);
      print(response.body);
      print(response.statusCode);
      if (response.statusCode == 200) {
        print("null");
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>const  HomeTabPage()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Invalid Number"),
        ));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Empty field"),
      ));
    }
  }

}

