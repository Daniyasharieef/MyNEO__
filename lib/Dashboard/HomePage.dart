import 'package:flutter/material.dart';
import 'package:my_neo/Dashboard/HomeScreens/TestKit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                color: Colors.white,
                child: Column(children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    Image.asset('assets/images/logo.png',
                        height: 150, width: 150),
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
                          padding: const EdgeInsets.all(15.0),
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
                              ),const SizedBox(height: 10,),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/greencon.png'),
                                              fit: BoxFit.cover),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: const [
                                              Text(
                                                "20",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                "Number Of Test Taken ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w300),
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
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/bluecon.png'),
                                              fit: BoxFit.cover),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              RichText(
                                                text: const TextSpan(
                                                  text: 'FEB ',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.white),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: '12',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white)),
                                                    TextSpan(
                                                        text: '2022',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color:
                                                                Colors.white)),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 5),
                                              const Text(
                                                "Last Test Taken ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Container(
                                        height: 100,
                                        width: 100,
                                        decoration:  BoxDecoration(
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "10",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              RichText(
                                                maxLines: 3,
                                                text: const TextSpan(
                                                  text: 'Days ago ',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.white),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: 'Recent ',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color:
                                                                Colors.white)),
                                                    TextSpan(
                                                        text: 'Test Taken',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color:
                                                                Colors.white)),
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
                      ),),  const SizedBox(height: 10),
                        Container(
                            height: 100,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/greencon.png'),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children:  [ Container(
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(color: Colors.white,
                                    borderRadius:
                                    BorderRadius.circular(20),
                                  ),child:
                                  Image.asset('assets/images/start_test.png',
                                      height: 150, width: 150),),
                                const   SizedBox(width:10),
                                  const   Text(
                                "Start Test ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight:
                                    FontWeight.w300),
                              ),const SizedBox(width:70),
                                  IconButton(
                                    icon: Image.asset('assets/images/arrowback.png',
                                        height:60,width:80),
                                    iconSize: 70,
                                    onPressed: () { Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>const  TestKit()));

                                    },
                                  ),
                   ] ),
                            ) ) , const   SizedBox(height:10),
                    Container(
                            height: 100,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/redcon.png'),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children:  [ Container(
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(color: Colors.white,
                                    borderRadius:
                                    BorderRadius.circular(20),
                                  ),child:
                                  Image.asset('assets/images/sym_test.png',
                                      height: 150, width: 150),),
                                const   SizedBox(width:10),
                                  const   Text(
                                "Symptom Check ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight:
                                    FontWeight.w300),
                              ),const SizedBox(width:20),
                              Image.asset('assets/images/arrowback.png',
                                 height:60,width:80),
                   ] ),
                            ) ) , const   SizedBox(height:10),
                    Container(
                            height: 100,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/bluecon.png'),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children:  [ Container(
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(color: Colors.white,
                                    borderRadius:
                                    BorderRadius.circular(20),
                                  ),child:
                                  Image.asset('assets/images/pro_test.png',
                                      height: 150, width: 150),),
                                const   SizedBox(width:10),
                                  const   Text(
                                "Product Check ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight:
                                    FontWeight.w300),
                              ),const SizedBox(width:35),
                              Image.asset('assets/images/arrowback.png',
                                 height:60,width:80),
                   ] ),
                            ) )
                  ]),
                  const SizedBox(height:30),
                ]))));
  }
}
