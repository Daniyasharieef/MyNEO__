import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:my_neo/Dashboard/Dashboard.dart';
import 'package:my_neo/Dashboard/HomeScreens/TestKit.dart';

import 'Step2.dart';

class Step1 extends StatefulWidget {
  const Step1({Key? key}) : super(key: key);

  @override
  State<Step1> createState() => Step1State();
}

class Step1State extends State<Step1> {
  @override
  Widget build(BuildContext context) {
    final baseDialog =
    Container(
        width: 300,
        child: Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)), //this right here
          child: SizedBox(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Once you start test, you must take the test immediately and upload test result image whenever ready."
                        "Delaying or skipping test may cause the test kit unusable to test again. ",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                        height: 48,
                        width: 150,
                        child: Center(
                          child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ), onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const  Step2()));
                          },
                              color: Colors.blue,
                              child: const Text(
                                "OK",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              )),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                                            const TestKit()));
                                  },
                                  splashRadius: 0.2,
                                  iconSize: 40,
                                ),
                                const SizedBox(width: 140),
                                Image.asset('assets/images/logo.png',
                                    height: 150, width: 130),
                              ],
                            ),
                            const SizedBox(height: 10),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                            endIndent: 10,
                                            thickness: 0.5,
                                            color: Colors.black12),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/group_green.png',
                                            ),
                                            const SizedBox(width: 5),
                                            const Text(
                                              "Your Test Kit is Genuine",
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
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
                                    Image.asset(
                                      "assets/images/test_kit.png",
                                      height: 100,
                                    ),
                                    const DottedLine(
                                      direction: Axis.horizontal,
                                      lineLength: double.infinity,
                                      lineThickness: 1.0,
                                      dashLength: 3.0,
                                      dashColor: Colors.lightBlueAccent,
                                      dashRadius: 10.0,
                                      dashGapLength: 4.0,
                                      dashGapColor: Colors.transparent,
                                      dashGapRadius: 0.0,
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Step 1",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Remove the blue",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15),
                                    ),
                                    const Text(
                                      " cover of the test card  ",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15),
                                    ),
                                    const SizedBox(height: 20),
                                  ],
                                ),
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
                                          showDialog(context: context, builder: (BuildContext context) => baseDialog);
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => const  Step2()));
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
                          ]),
                    )))));
  }

}
