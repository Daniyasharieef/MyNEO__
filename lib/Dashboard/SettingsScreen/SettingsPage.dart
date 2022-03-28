import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_neo/Dashboard/HomeScreens/TestUpload.dart';

import 'accounts_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
                                                  const TestUpl()));
                                    },
                                    splashRadius: 0.2,
                                    iconSize: 40,
                                  ),
                                  const SizedBox(width: 140),
                                  Image.asset('assets/images/logo.png',
                                      height: 150, width: 120),
                                ],
                              ),
                              Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                        color: Colors.black12)),
                                child:const  Padding(
                                  padding:  EdgeInsets.all(8.0),
                                  child: SizedBox(
                                      height: 30,
                                      width: 500,
                                      child:  Text(
                                        "Settings",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(color: Colors.lightBlueAccent,fontWeight: FontWeight.w700),
                                      )),
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                        color: Colors.black12)),
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(children: [
                                    ListTile(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          side: const BorderSide(
                                              color: Colors.black12)),dense: true,
                                      leading: Image.asset(
                                          'assets/images/iaccount.png',
                                          height: 150,
                                          width: 40),
                                      iconColor: Colors.blue,
                                      title: const Text('Account'),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AccountsPage()));
                                      },
                                    ),
                                    const SizedBox(height: 10),
                                    ListTile(dense: true,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          side: const BorderSide(
                                              color: Colors.black12)),
                                      leading: Image.asset(
                                          'assets/images/ihelp.png',
                                          height: 70,
                                          width: 40),
                                      iconColor: Colors.blue,
                                      title: const Text('Help'),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AccountsPage()));
                                      },
                                    ),
                                    const SizedBox(height: 10),
                                    ListTile(dense: true,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          side: const BorderSide(
                                              color: Colors.black12)),
                                      leading: Image.asset(
                                          'assets/images/iprefrence.png',
                                          height: 150,
                                          width: 40),
                                      iconColor: Colors.blue,
                                      title: const Text('Preference'),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AccountsPage()));
                                      },
                                    ),
                                    const SizedBox(height: 10),
                                    ListTile(dense: true,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          side: const BorderSide(
                                              color: Colors.black12)),
                                      leading: Image.asset(
                                          'assets/images/ifeed.png',
                                          height: 150,
                                          width: 40),
                                      iconColor: Colors.blue,
                                      title: const Text('Feed Order'),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AccountsPage()));
                                      },
                                    ),
                                    const SizedBox(height: 10),
                                    ListTile(dense: true,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          side: const BorderSide(
                                              color: Colors.black12)),
                                      leading: Image.asset(
                                          'assets/images/iprivacy.png',
                                          height: 150,
                                          width: 40),
                                      iconColor: Colors.blue,
                                      title: const Text('Privacy Control'),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AccountsPage()));
                                      },
                                    ),
                                    const SizedBox(height: 10),
                                    ListTile(dense: true,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          side: const BorderSide(
                                              color: Colors.black12)),
                                      leading: Image.asset(
                                          'assets/images/iabout.png',
                                          height: 150,
                                          width: 40),
                                      iconColor: Colors.blue,
                                      title: const Text('About Us'),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AccountsPage()));
                                      },
                                    ),
                                  ]),
                                ),
                              ),
                            ]))))));
  }
}
