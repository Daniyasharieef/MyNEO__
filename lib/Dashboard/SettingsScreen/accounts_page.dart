
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'SettingsPage.dart';
  String token ="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyM2FjYzNlYzM2OTE2NWY1ZjFiYWUyZCIsImVtYWlsIjoibWFkaGF2YW5AYWdhbS5jb20iLCJtb2JpbGVOdW1iZXIiOiI3OTA0MjEyMTE5IiwiZnVsbE5hbWUiOiJNYWRoYXZhbiIsImlhdCI6MTY0ODEyNDI4MywiZXhwIjoxNjU2NzY0MjgzfQ.4eWHtrc30Qgu6usHfIrW1kw-9OuBv9V194OaFi5Ny18";
Future<UserDetails> fetchUser() async {
 final  response = await http.get(
      Uri.parse("http://164.90.254.9:4000/myneo/api/v1/users"),
      headers: {
        "Content-Type": "application/json",
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },);
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return UserDetails.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

class UserDetails {
  String? _status;
  Data? _data;
  String? _message;

  UserDetails({String? status, Data? data, String? message}) {
    if (status != null) {
      this._status = status;
    }
    if (data != null) {
      this._data = data;
    }
    if (message != null) {
      this._message = message;
    }
  }

  String? get status => _status;
  set status(String? status) => _status = status;
  Data? get data => _data;
  set data(Data? data) => _data = data;
  String? get message => _message;
  set message(String? message) => _message = message;

  UserDetails.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    _message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this._status;
    if (this._data != null) {
      data['data'] = this._data!.toJson();
    }
    data['message'] = this._message;
    return data;
  }
}

class Data {
  String? _sId;
  bool? _fingerPrintEnabled;
  String? _notificationStatus;
  String? _fullName;
  String? _email;
  String? _mobileNumber;
  String? _dob;
  String? _idType;
  String? _idValue;
  String? _idUrl;
  String? _addressLine1;
  String? _addressLine2;
  String? _deviceType;
  String? _deviceToken;
  String? _status;
  String? _createdAt;
  String? _updatedAt;
  String? _country;
  String? _updatedBy;
  String? _organization;
  String? _image;

  Data(
      {String? sId,
        bool? fingerPrintEnabled,
        String? notificationStatus,
        String? fullName,
        String? email,
        String? mobileNumber,
        String? dob,
        String? idType,
        String? idValue,
        String? idUrl,
        String? addressLine1,
        String? addressLine2,
        String? deviceType,
        String? deviceToken,
        String? status,
        String? createdAt,
        String? updatedAt,
        String? country,
        String? updatedBy,
        String? organization,
        String? image}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (fingerPrintEnabled != null) {
      this._fingerPrintEnabled = fingerPrintEnabled;
    }
    if (notificationStatus != null) {
      this._notificationStatus = notificationStatus;
    }
    if (fullName != null) {
      this._fullName = fullName;
    }
    if (email != null) {
      this._email = email;
    }
    if (mobileNumber != null) {
      this._mobileNumber = mobileNumber;
    }
    if (dob != null) {
      this._dob = dob;
    }
    if (idType != null) {
      this._idType = idType;
    }
    if (idValue != null) {
      this._idValue = idValue;
    }
    if (idUrl != null) {
      this._idUrl = idUrl;
    }
    if (addressLine1 != null) {
      this._addressLine1 = addressLine1;
    }
    if (addressLine2 != null) {
      this._addressLine2 = addressLine2;
    }
    if (deviceType != null) {
      this._deviceType = deviceType;
    }
    if (deviceToken != null) {
      this._deviceToken = deviceToken;
    }
    if (status != null) {
      this._status = status;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
    if (country != null) {
      this._country = country;
    }
    if (updatedBy != null) {
      this._updatedBy = updatedBy;
    }
    if (organization != null) {
      this._organization = organization;
    }
    if (image != null) {
      this._image = image;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  bool? get fingerPrintEnabled => _fingerPrintEnabled;
  set fingerPrintEnabled(bool? fingerPrintEnabled) =>
      _fingerPrintEnabled = fingerPrintEnabled;
  String? get notificationStatus => _notificationStatus;
  set notificationStatus(String? notificationStatus) =>
      _notificationStatus = notificationStatus;
  String? get fullName => _fullName;
  set fullName(String? fullName) => _fullName = fullName;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get mobileNumber => _mobileNumber;
  set mobileNumber(String? mobileNumber) => _mobileNumber = mobileNumber;
  String? get dob => _dob;
  set dob(String? dob) => _dob = dob;
  String? get idType => _idType;
  set idType(String? idType) => _idType = idType;
  String? get idValue => _idValue;
  set idValue(String? idValue) => _idValue = idValue;
  String? get idUrl => _idUrl;
  set idUrl(String? idUrl) => _idUrl = idUrl;
  String? get addressLine1 => _addressLine1;
  set addressLine1(String? addressLine1) => _addressLine1 = addressLine1;
  String? get addressLine2 => _addressLine2;
  set addressLine2(String? addressLine2) => _addressLine2 = addressLine2;
  String? get deviceType => _deviceType;
  set deviceType(String? deviceType) => _deviceType = deviceType;
  String? get deviceToken => _deviceToken;
  set deviceToken(String? deviceToken) => _deviceToken = deviceToken;
  String? get status => _status;
  set status(String? status) => _status = status;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  String? get country => _country;
  set country(String? country) => _country = country;
  String? get updatedBy => _updatedBy;
  set updatedBy(String? updatedBy) => _updatedBy = updatedBy;
  String? get organization => _organization;
  set organization(String? organization) => _organization = organization;
  String? get image => _image;
  set image(String? image) => _image = image;

  Data.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _fingerPrintEnabled = json['fingerPrintEnabled'];
    _notificationStatus = json['notificationStatus'];
    _fullName = json['fullName'];
    _email = json['email'];
    _mobileNumber = json['mobileNumber'];
    _dob = json['dob'];
    _idType = json['idType'];
    _idValue = json['idValue'];
    _idUrl = json['idUrl'];
    _addressLine1 = json['addressLine1'];
    _addressLine2 = json['addressLine2'];
    _deviceType = json['deviceType'];
    _deviceToken = json['deviceToken'];
    _status = json['status'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _country = json['country'];
    _updatedBy = json['updatedBy'];
    _organization = json['organization'];
    _image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['fingerPrintEnabled'] = this._fingerPrintEnabled;
    data['notificationStatus'] = this._notificationStatus;
    data['fullName'] = this._fullName;
    data['email'] = this._email;
    data['mobileNumber'] = this._mobileNumber;
    data['dob'] = this._dob;
    data['idType'] = this._idType;
    data['idValue'] = this._idValue;
    data['idUrl'] = this._idUrl;
    data['addressLine1'] = this._addressLine1;
    data['addressLine2'] = this._addressLine2;
    data['deviceType'] = this._deviceType;
    data['deviceToken'] = this._deviceToken;
    data['status'] = this._status;
    data['createdAt'] = this._createdAt;
    data['updatedAt'] = this._updatedAt;
    data['country'] = this._country;
    data['updatedBy'] = this._updatedBy;
    data['organization'] = this._organization;
    data['image'] = this._image;
    return data;
  }
}




class AccountsPage extends StatefulWidget {
  const AccountsPage({Key? key}) : super(key: key);

  @override
  State<AccountsPage> createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
  late Future<UserDetails> futureUserDetails;

  @override
  void initState() {
    super.initState();
    futureUserDetails = fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child:
            FutureBuilder<UserDetails>(
              future: futureUserDetails,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                  Padding(
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
                                                      const SettingsPage()));
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
                                        side:
                                            const BorderSide(color: Colors.black12)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: ListTile(
                                        dense: true,
                                        leading: Text(
                                          "Accounts",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.lightBlueAccent,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        trailing: Icon(
                                          Icons.edit_outlined,
                                          color: Colors.lightBlueAccent,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Card(
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
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                side: const BorderSide(
                                                    color: Colors.black12)),
                                            dense: true,
                                            subtitle:Text(snapshot.data!.data!._fullName.toString()),
                                            title: const Text('Name'),
                                          ),
                                          const SizedBox(height: 10),
                                          ListTile(
                                            dense: true,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                side: const BorderSide(
                                                    color: Colors.black12)),
                                            subtitle: Text(snapshot.data!.data!._mobileNumber.toString()),
                                            title: const Text('Mobile Number'),
                                          ),
                                          const SizedBox(height: 10),
                                          ListTile(
                                            dense: true,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                side: const BorderSide(
                                                    color: Colors.black12)),
                                            subtitle: Text(snapshot.data!.data!._dob.toString()),
                                            title: const Text('DOB'),
                                          ),
                                          const SizedBox(height: 10),
                                          ListTile(
                                            dense: true,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                side: const BorderSide(
                                                    color: Colors.black12)),
                                            subtitle:           Text(snapshot.data!.data!._idType.toString()),
                                            title: const Text('ID Type'),
                                          ),
                                          const SizedBox(height: 10),
                                          ListTile(
                                            dense: true,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                side: const BorderSide(
                                                    color: Colors.black12)),
                                            subtitle:Text(snapshot.data!.data!._idValue.toString()),
                                            title: const Text('ID Number'),
                                          ),
                                          const SizedBox(height: 10),
                                          ListTile(
                                            dense: true,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                side: const BorderSide(
                                                    color: Colors.black12)),
                                            subtitle:Text(snapshot.data!.data!._image.toString()),
                                            title: const Text('ID Proof'),
                                          ),
                                          const SizedBox(height: 10),
                                          ListTile(
                                            dense: true,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                side: const BorderSide(
                                                    color: Colors.black12)),
                                            subtitle:Text(snapshot.data!.data!._addressLine1.toString()),
                                            title: const Text('Address Line 1 '),
                                          ),
                                          const SizedBox(height: 10),
                                          ListTile(
                                            dense: true,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                side: const BorderSide(
                                                    color: Colors.black12)),
                                            subtitle:   Text(snapshot.data!.data!._addressLine2.toString()),
                                            title: const Text('Address Line 2'),
                                          ),
                                          const SizedBox(height: 10),
                                        ]),
                                      ),
                                    ),
                                  )
                                ]))
                      ))]);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const CircularProgressIndicator();
              },
            ),
          ),
        ),

    );
  }
}