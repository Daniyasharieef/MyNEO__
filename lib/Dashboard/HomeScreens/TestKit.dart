import 'package:flutter/material.dart';
import 'package:my_neo/Dashboard/Dashboard.dart';
import 'package:my_neo/Dashboard/HomeScreens/Step1.dart';

class TestKit extends StatefulWidget {
  const TestKit({Key? key}) : super(key: key);

  @override
  State<TestKit> createState() => _TestKitState();
}

class _TestKitState extends State<TestKit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
      color: Colors.white10,
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
                              const HomeTabPage()));
                    },
                    splashRadius: 0.2,
                    iconSize: 35,
                  ),
                  const SizedBox(width: 140),
                  Image.asset('assets/images/logo.png', height: 150, width: 150),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.white,
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Welcome",
                            style: TextStyle(color: Colors.black26),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Ales Smith",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/greencon.png'),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "20",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Number Of Test Taken ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/bluecon.png'),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        RichText(
                                          text: const TextSpan(
                                            text: 'FEB ',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.white),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: '12',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontStyle: FontStyle.italic,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white)),
                                              TextSpan(
                                                  text: '2022',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w300,
                                                      color: Colors.white)),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        const Text(
                                          "Last Test Taken ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                   gradient:const LinearGradient(
                                      colors: [
                                        Color(0xFFEE961B),
                                    Color(0xFFF4C20E),
                                    ],
                                    begin:  FractionalOffset(0.0, 0.0),
                            end:  FractionalOffset(1.0, 0.0),
                            stops: [0.0, 1.0],
                           ),
                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "10",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        RichText(
                                          maxLines: 3,
                                          text: const TextSpan(
                                            text: 'Days ago ',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.white),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Recent ',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w300,
                                                      color: Colors.white)),
                                              TextSpan(
                                                  text: 'Test Taken',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w300,
                                                      color: Colors.white)),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white,
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                leading: Image.asset('assets/images/tester.png',
                    height: 100, width: 50),
                title: Column(
                  children: [
                     const Text(
                      "Test Kit No",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),  const Text(
                      "NT0030103AA000001",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                   const Divider(
                      thickness:0.5,color:Colors.black12
                    ),
                    Row(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/group_green.png',
                            height: 60, width: 20),
                       const  SizedBox(width:5),
                        const Text(
                          "Your Test Kit is Genuine",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                        const SizedBox(width: 10),
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
                child: Image.asset('assets/images/qr_code.png',
                    height: 100, width: 50),
              ),
              ),
            ),),
              const SizedBox(height: 10),
              const Text(
                "POINTS TO ATTENTION ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              const SizedBox(height: 10),
              Container( decoration: BoxDecoration(
                  color: Colors.white, // Your desired background color
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.lightBlueAccent.withOpacity(0.3), blurRadius: 3),
                  ]
              ),
                child: ListTile(
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  leading: Image.asset('assets/images/group_blue.png',
                      height: 100, width: 50),
                  title: const Text(
                    "Rinse and clean your mouth before use",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container( decoration: BoxDecoration(
                  color: Colors.white, // Your desired background color
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.lightBlueAccent.withOpacity(0.3), blurRadius: 5),
                  ]
              ),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  tileColor: Colors.white,
                  leading: Image.asset('assets/images/group_blue.png',
                      height: 100, width: 50),
                  title: const Text(
                    "Rinse and clean your mouth after use",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(decoration: BoxDecoration(
                  color: Colors.white, // Your desired background color
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.lightBlueAccent.withOpacity(0.3), blurRadius: 5),
                  ]
              ),
                child: ListTile(
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  leading: Image.asset('assets/images/group_blue.png',
                      height: 100, width: 50),
                  title: const Text(
                    "Children need to be used under the supervision of an adult",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container( decoration: BoxDecoration(
                  color: Colors.white, // Your desired background color
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.lightBlueAccent.withOpacity(0.3), blurRadius: 5),
                  ]
              ),
                child: ListTile(
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  leading: Image.asset('assets/images/group_blue.png',
                      height: 100, width: 50),
                  title: const Text(
                    "This product can be contained in the mouth for 2 minutes,not to be swallowed",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>const  Step1()));
                        },
                        color: Colors.blue,
                        child: const Text(
                          "Yes I Did!",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ))),
                const  SizedBox(width:10),
                Image.asset('assets/images/leftarrow.png', height: 150, width: 120),
              ],
            ),
          ]),
    ),
            )));
  }
}
