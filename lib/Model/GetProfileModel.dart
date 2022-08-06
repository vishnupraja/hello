import 'dart:convert';
/// status : true
/// message : "Get Profile"
/// data : [{"user_id":"15","usergroup_id":"3","is_featured":"No","sale_count":"0","rating_count":"0","balance":"0.00","firstname":null,"lastname":null,"username":"raj","email":"raj@gmail.com","raw_password":null,"password":"25d55ad283aa400af464c76d713c07ad","salt":"","is_email_verified":"No","mobile":null,"is_mobile_verified":"No","designation":null,"company":null,"dob":null,"gender":"Male","image":null,"signature":null,"pmethod_id":null,"pmethod_details":null,"code":null,"code2":null,"ip":null,"preference":null,"social_links":null,"biography":null,"address":null,"city":null,"country":null,"postcode":null,"status":"Active","sort_order":"0","source":"web","created_at":null,"updated_at":"2022-04-15 06:59:15","user_gcm_code":""}]

GetProfileModel getProfileModelFromJson(String str) => GetProfileModel.fromJson(json.decode(str));
String getProfileModelToJson(GetProfileModel data) => json.encode(data.toJson());
class GetProfileModel {
  GetProfileModel({
      bool? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetProfileModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<Data>? _data;
GetProfileModel copyWith({  bool? status,
  String? message,
  List<Data>? data,
}) => GetProfileModel(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get status => _status;
  String? get message => _message;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// user_id : "15"
/// usergroup_id : "3"
/// is_featured : "No"
/// sale_count : "0"
/// rating_count : "0"
/// balance : "0.00"
/// firstname : null
/// lastname : null
/// username : "raj"
/// email : "raj@gmail.com"
/// raw_password : null
/// password : "25d55ad283aa400af464c76d713c07ad"
/// salt : ""
/// is_email_verified : "No"
/// mobile : null
/// is_mobile_verified : "No"
/// designation : null
/// company : null
/// dob : null
/// gender : "Male"
/// image : null
/// signature : null
/// pmethod_id : null
/// pmethod_details : null
/// code : null
/// code2 : null
/// ip : null
/// preference : null
/// social_links : null
/// biography : null
/// address : null
/// city : null
/// country : null
/// postcode : null
/// status : "Active"
/// sort_order : "0"
/// source : "web"
/// created_at : null
/// updated_at : "2022-04-15 06:59:15"
/// user_gcm_code : ""

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? userId, 
      String? usergroupId, 
      String? isFeatured, 
      String? saleCount, 
      String? ratingCount, 
      String? balance, 
      dynamic firstname, 
      dynamic lastname, 
      String? username, 
      String? email, 
      dynamic rawPassword, 
      String? password, 
      String? salt, 
      String? isEmailVerified, 
      dynamic mobile, 
      String? isMobileVerified, 
      dynamic designation, 
      dynamic company, 
      dynamic dob, 
      String? gender, 
      dynamic image, 
      dynamic signature, 
      dynamic pmethodId, 
      dynamic pmethodDetails, 
      dynamic code, 
      dynamic code2, 
      dynamic ip, 
      dynamic preference, 
      dynamic socialLinks, 
      dynamic biography, 
      dynamic address, 
      dynamic city, 
      dynamic country, 
      dynamic postcode, 
      String? status, 
      String? sortOrder, 
      String? source, 
      dynamic createdAt, 
      String? updatedAt, 
      String? userGcmCode,}){
    _userId = userId;
    _usergroupId = usergroupId;
    _isFeatured = isFeatured;
    _saleCount = saleCount;
    _ratingCount = ratingCount;
    _balance = balance;
    _firstname = firstname;
    _lastname = lastname;
    _username = username;
    _email = email;
    _rawPassword = rawPassword;
    _password = password;
    _salt = salt;
    _isEmailVerified = isEmailVerified;
    _mobile = mobile;
    _isMobileVerified = isMobileVerified;
    _designation = designation;
    _company = company;
    _dob = dob;
    _gender = gender;
    _image = image;
    _signature = signature;
    _pmethodId = pmethodId;
    _pmethodDetails = pmethodDetails;
    _code = code;
    _code2 = code2;
    _ip = ip;
    _preference = preference;
    _socialLinks = socialLinks;
    _biography = biography;
    _address = address;
    _city = city;
    _country = country;
    _postcode = postcode;
    _status = status;
    _sortOrder = sortOrder;
    _source = source;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _userGcmCode = userGcmCode;
}

  Data.fromJson(dynamic json) {
    _userId = json['user_id'];
    _usergroupId = json['usergroup_id'];
    _isFeatured = json['is_featured'];
    _saleCount = json['sale_count'];
    _ratingCount = json['rating_count'];
    _balance = json['balance'];
    _firstname = json['firstname'];
    _lastname = json['lastname'];
    _username = json['username'];
    _email = json['email'];
    _rawPassword = json['raw_password'];
    _password = json['password'];
    _salt = json['salt'];
    _isEmailVerified = json['is_email_verified'];
    _mobile = json['mobile'];
    _isMobileVerified = json['is_mobile_verified'];
    _designation = json['designation'];
    _company = json['company'];
    _dob = json['dob'];
    _gender = json['gender'];
    _image = json['image'];
    _signature = json['signature'];
    _pmethodId = json['pmethod_id'];
    _pmethodDetails = json['pmethod_details'];
    _code = json['code'];
    _code2 = json['code2'];
    _ip = json['ip'];
    _preference = json['preference'];
    _socialLinks = json['social_links'];
    _biography = json['biography'];
    _address = json['address'];
    _city = json['city'];
    _country = json['country'];
    _postcode = json['postcode'];
    _status = json['status'];
    _sortOrder = json['sort_order'];
    _source = json['source'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _userGcmCode = json['user_gcm_code'];
  }
  String? _userId;
  String? _usergroupId;
  String? _isFeatured;
  String? _saleCount;
  String? _ratingCount;
  String? _balance;
  dynamic _firstname;
  dynamic _lastname;
  String? _username;
  String? _email;
  dynamic _rawPassword;
  String? _password;
  String? _salt;
  String? _isEmailVerified;
  dynamic _mobile;
  String? _isMobileVerified;
  dynamic _designation;
  dynamic _company;
  dynamic _dob;
  String? _gender;
  dynamic _image;
  dynamic _signature;
  dynamic _pmethodId;
  dynamic _pmethodDetails;
  dynamic _code;
  dynamic _code2;
  dynamic _ip;
  dynamic _preference;
  dynamic _socialLinks;
  dynamic _biography;
  dynamic _address;
  dynamic _city;
  dynamic _country;
  dynamic _postcode;
  String? _status;
  String? _sortOrder;
  String? _source;
  dynamic _createdAt;
  String? _updatedAt;
  String? _userGcmCode;
Data copyWith({  String? userId,
  String? usergroupId,
  String? isFeatured,
  String? saleCount,
  String? ratingCount,
  String? balance,
  dynamic firstname,
  dynamic lastname,
  String? username,
  String? email,
  dynamic rawPassword,
  String? password,
  String? salt,
  String? isEmailVerified,
  dynamic mobile,
  String? isMobileVerified,
  dynamic designation,
  dynamic company,
  dynamic dob,
  String? gender,
  dynamic image,
  dynamic signature,
  dynamic pmethodId,
  dynamic pmethodDetails,
  dynamic code,
  dynamic code2,
  dynamic ip,
  dynamic preference,
  dynamic socialLinks,
  dynamic biography,
  dynamic address,
  dynamic city,
  dynamic country,
  dynamic postcode,
  String? status,
  String? sortOrder,
  String? source,
  dynamic createdAt,
  String? updatedAt,
  String? userGcmCode,
}) => Data(  userId: userId ?? _userId,
  usergroupId: usergroupId ?? _usergroupId,
  isFeatured: isFeatured ?? _isFeatured,
  saleCount: saleCount ?? _saleCount,
  ratingCount: ratingCount ?? _ratingCount,
  balance: balance ?? _balance,
  firstname: firstname ?? _firstname,
  lastname: lastname ?? _lastname,
  username: username ?? _username,
  email: email ?? _email,
  rawPassword: rawPassword ?? _rawPassword,
  password: password ?? _password,
  salt: salt ?? _salt,
  isEmailVerified: isEmailVerified ?? _isEmailVerified,
  mobile: mobile ?? _mobile,
  isMobileVerified: isMobileVerified ?? _isMobileVerified,
  designation: designation ?? _designation,
  company: company ?? _company,
  dob: dob ?? _dob,
  gender: gender ?? _gender,
  image: image ?? _image,
  signature: signature ?? _signature,
  pmethodId: pmethodId ?? _pmethodId,
  pmethodDetails: pmethodDetails ?? _pmethodDetails,
  code: code ?? _code,
  code2: code2 ?? _code2,
  ip: ip ?? _ip,
  preference: preference ?? _preference,
  socialLinks: socialLinks ?? _socialLinks,
  biography: biography ?? _biography,
  address: address ?? _address,
  city: city ?? _city,
  country: country ?? _country,
  postcode: postcode ?? _postcode,
  status: status ?? _status,
  sortOrder: sortOrder ?? _sortOrder,
  source: source ?? _source,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  userGcmCode: userGcmCode ?? _userGcmCode,
);
  String? get userId => _userId;
  String? get usergroupId => _usergroupId;
  String? get isFeatured => _isFeatured;
  String? get saleCount => _saleCount;
  String? get ratingCount => _ratingCount;
  String? get balance => _balance;
  dynamic get firstname => _firstname;
  dynamic get lastname => _lastname;
  String? get username => _username;
  String? get email => _email;
  dynamic get rawPassword => _rawPassword;
  String? get password => _password;
  String? get salt => _salt;
  String? get isEmailVerified => _isEmailVerified;
  dynamic get mobile => _mobile;
  String? get isMobileVerified => _isMobileVerified;
  dynamic get designation => _designation;
  dynamic get company => _company;
  dynamic get dob => _dob;
  String? get gender => _gender;
  dynamic get image => _image;
  dynamic get signature => _signature;
  dynamic get pmethodId => _pmethodId;
  dynamic get pmethodDetails => _pmethodDetails;
  dynamic get code => _code;
  dynamic get code2 => _code2;
  dynamic get ip => _ip;
  dynamic get preference => _preference;
  dynamic get socialLinks => _socialLinks;
  dynamic get biography => _biography;
  dynamic get address => _address;
  dynamic get city => _city;
  dynamic get country => _country;
  dynamic get postcode => _postcode;
  String? get status => _status;
  String? get sortOrder => _sortOrder;
  String? get source => _source;
  dynamic get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get userGcmCode => _userGcmCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    map['usergroup_id'] = _usergroupId;
    map['is_featured'] = _isFeatured;
    map['sale_count'] = _saleCount;
    map['rating_count'] = _ratingCount;
    map['balance'] = _balance;
    map['firstname'] = _firstname;
    map['lastname'] = _lastname;
    map['username'] = _username;
    map['email'] = _email;
    map['raw_password'] = _rawPassword;
    map['password'] = _password;
    map['salt'] = _salt;
    map['is_email_verified'] = _isEmailVerified;
    map['mobile'] = _mobile;
    map['is_mobile_verified'] = _isMobileVerified;
    map['designation'] = _designation;
    map['company'] = _company;
    map['dob'] = _dob;
    map['gender'] = _gender;
    map['image'] = _image;
    map['signature'] = _signature;
    map['pmethod_id'] = _pmethodId;
    map['pmethod_details'] = _pmethodDetails;
    map['code'] = _code;
    map['code2'] = _code2;
    map['ip'] = _ip;
    map['preference'] = _preference;
    map['social_links'] = _socialLinks;
    map['biography'] = _biography;
    map['address'] = _address;
    map['city'] = _city;
    map['country'] = _country;
    map['postcode'] = _postcode;
    map['status'] = _status;
    map['sort_order'] = _sortOrder;
    map['source'] = _source;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['user_gcm_code'] = _userGcmCode;
    return map;
  }

}