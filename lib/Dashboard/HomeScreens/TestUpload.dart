import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import 'Step3.dart';

class TestUpl extends StatefulWidget {
  const TestUpl({Key? key}) : super(key: key);

  @override
  State<TestUpl> createState() => _TestUplState();
}

class _TestUplState extends State<TestUpl> {
  final bool? valuefirst = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    color: Colors.white10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                  icon: Image.asset('assets/images/back.png',
                                      height: 150, width: 50),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Step3()));
                                  },
                                  splashRadius: 0.2,
                                  iconSize: 40,
                                ),
                                const SizedBox(width: 140),
                                Image.asset('assets/images/logo.png',
                                    height: 150, width: 120),
                              ],
                            ),
                            Stack(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: ListTile(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    title: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Test Kit No",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15),
                                        ),
                                        const Text(
                                          "NT0030103AA000001",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15),
                                        ),
                                        const Divider(
                                            indent: 30,
                                            endIndent: 70,
                                            thickness: 0.5,
                                            color: Colors.black12),
                                        Container(
                                          width: 140,
                                          decoration: BoxDecoration(
                                            color: Colors.black12,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                "Test Duration ",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10),
                                              ),
                                              Icon(
                                                Icons.timer_outlined,
                                                color: Colors.green,
                                              ),
                                              Text(
                                                "15 :20",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    trailing: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Image.asset(
                                          'assets/images/qr_code.png',
                                          height: 100,
                                          width: 50),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                height: 110,
                                child: Image.asset('assets/images/tester.png',
                                    height: 10, width: 50),
                              ),
                            ]),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon:Image.asset("assets/images/upload_ph.png",
                                          height: 150),
                                      onPressed: () {

                                      },
                                      splashRadius: 0.2,
                                      iconSize: 80,
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Please Upload test kit image",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 15),
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "PLEASE SELECT RESULT",
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                title: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/tester.png",
                                        height: 150),
                                    const SizedBox(width: 40),
                                    Column(
                                      children: [
                                        Checkbox(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7)),
                                          side:const  BorderSide(color:Colors.green ),
                                          checkColor: Colors.greenAccent,
                                          activeColor: Colors.red,
                                          value: valuefirst,
                                          onChanged: (bool? value) {
                                            valuefirst != value;
                                          },
                                        ), Checkbox(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7)),
                                          side:const  BorderSide(color:Colors.green ),
                                          checkColor: Colors.greenAccent,
                                          activeColor: Colors.red,
                                          value: valuefirst,
                                          onChanged: (bool? value) {
                                            valuefirst != value;
                                          },
                                        ), Checkbox(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7)
                                          ),
                                          side:const  BorderSide(color:Colors.green ),
                                          checkColor: Colors.greenAccent,
                                          // activeColor: Colors.red,
                                          value: valuefirst,
                                          onChanged: (bool? value) {
                                            valuefirst != value;
                                          },
                                        ),
                                      const   SizedBox(height: 10),
                                      ],
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      children:  [
                                        Container(decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.red,
                                        ),
                                            height: 35,
                                            width: 130,
                                                child:const  Center(
                                                  child:  Text(
                                                    "POSITIVE",
                                                    style: TextStyle(color: Colors.white),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )),
                                      const  SizedBox(height: 10),
                                        Container(decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:const  Color(0xFF6DB038)
                                        ),
                                            height: 35,
                                            width: 130,
                                            child:const  Center(
                                              child:  Text(
                                                "NEGATIVE",
                                                style: TextStyle(color: Colors.white),
                                                textAlign: TextAlign.center,
                                              ),
                                            )),
                                        const  SizedBox(height: 10),
                                        Container(decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                            color:const  Color(0xFFEE961B)
                                        ),
                                            height: 35,
                                            width: 130,
                                            child:const  Center(
                                              child:  Text(
                                                "INVALID",
                                                style: TextStyle(color: Colors.white),
                                                textAlign: TextAlign.center,
                                              ),
                                            )),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                             ] ),
                            ),

                          ),
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
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const TestUpl()));
                                        },
                                        color: Colors.blue,
                                        child: const Text(
                                          "Yes I Did!",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ))),
                                const SizedBox(width: 10),
                                Image.asset('assets/images/leftarrow.png',
                                    height: 150, width: 120),
                              ],
                            ),
                          ])),
                    )),
        )
    );
  }
}
