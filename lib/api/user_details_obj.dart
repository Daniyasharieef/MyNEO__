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
