import 'dart:convert';
/// status : true
/// message : "add List"
/// data : [{"id":"9","user_id":"7","prod_img":"watch1.jpg","title":"0","usergroup_id":"3","is_featured":"No","sale_count":"0","rating_count":"0","balance":"0.00","firstname":"abc","lastname":"pqr","username":"abc","email":"purvasonawane16@gmail.com","raw_password":"Pu1234567","password":"861711269989a8e4c3f9eecf204104112a3682ad","salt":"9FyGfgeC2","is_email_verified":"No","mobile":"","is_mobile_verified":"No","designation":"student","company":"","dob":"1992-11-16","gender":"Male","image":"noimage.jpg","signature":"nosignature.png","pmethod_id":"0","pmethod_details":"","code":null,"code2":null,"ip":null,"preference":null,"social_links":null,"biography":"","address":null,"city":null,"country":null,"postcode":null,"status":"Active","sort_order":"2","source":"web","created_at":"2022-03-09 10:35:34","updated_at":"2022-04-25 09:31:46","user_gcm_code":""},{"id":"14","user_id":"7","prod_img":"","title":"0","usergroup_id":"3","is_featured":"No","sale_count":"0","rating_count":"0","balance":"0.00","firstname":"abc","lastname":"pqr","username":"abc","email":"purvasonawane16@gmail.com","raw_password":"Pu1234567","password":"861711269989a8e4c3f9eecf204104112a3682ad","salt":"9FyGfgeC2","is_email_verified":"No","mobile":"","is_mobile_verified":"No","designation":"student","company":"","dob":"1992-11-16","gender":"Male","image":"noimage.jpg","signature":"nosignature.png","pmethod_id":"0","pmethod_details":"","code":null,"code2":null,"ip":null,"preference":null,"social_links":null,"biography":"","address":null,"city":null,"country":null,"postcode":null,"status":"Active","sort_order":"2","source":"web","created_at":"2022-03-09 10:35:34","updated_at":"2022-04-25 09:31:46","user_gcm_code":""},{"id":"15","user_id":"7","prod_img":".png","title":"0","usergroup_id":"3","is_featured":"No","sale_count":"0","rating_count":"0","balance":"0.00","firstname":"abc","lastname":"pqr","username":"abc","email":"purvasonawane16@gmail.com","raw_password":"Pu1234567","password":"861711269989a8e4c3f9eecf204104112a3682ad","salt":"9FyGfgeC2","is_email_verified":"No","mobile":"","is_mobile_verified":"No","designation":"student","company":"","dob":"1992-11-16","gender":"Male","image":"noimage.jpg","signature":"nosignature.png","pmethod_id":"0","pmethod_details":"","code":null,"code2":null,"ip":null,"preference":null,"social_links":null,"biography":"","address":null,"city":null,"country":null,"postcode":null,"status":"Active","sort_order":"2","source":"web","created_at":"2022-03-09 10:35:34","updated_at":"2022-04-25 09:31:46","user_gcm_code":""}]
/// url : "https://alphawizztest.tk/E_Learning/api/uploads/"

GetAllPostModel getAllPostModelFromJson(String str) => GetAllPostModel.fromJson(json.decode(str));
String getAllPostModelToJson(GetAllPostModel data) => json.encode(data.toJson());
class GetAllPostModel {
  GetAllPostModel({
      bool? status, 
      String? message, 
      List<Data>? data, 
      String? url,}){
    _status = status;
    _message = message;
    _data = data;
    _url = url;
}

  GetAllPostModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _url = json['url'];
  }
  bool? _status;
  String? _message;
  List<Data>? _data;
  String? _url;
GetAllPostModel copyWith({  bool? status,
  String? message,
  List<Data>? data,
  String? url,
}) => GetAllPostModel(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
  url: url ?? _url,
);
  bool? get status => _status;
  String? get message => _message;
  List<Data>? get data => _data;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['url'] = _url;
    return map;
  }

}

/// id : "9"
/// user_id : "7"
/// prod_img : "watch1.jpg"
/// title : "0"
/// usergroup_id : "3"
/// is_featured : "No"
/// sale_count : "0"
/// rating_count : "0"
/// balance : "0.00"
/// firstname : "abc"
/// lastname : "pqr"
/// username : "abc"
/// email : "purvasonawane16@gmail.com"
/// raw_password : "Pu1234567"
/// password : "861711269989a8e4c3f9eecf204104112a3682ad"
/// salt : "9FyGfgeC2"
/// is_email_verified : "No"
/// mobile : ""
/// is_mobile_verified : "No"
/// designation : "student"
/// company : ""
/// dob : "1992-11-16"
/// gender : "Male"
/// image : "noimage.jpg"
/// signature : "nosignature.png"
/// pmethod_id : "0"
/// pmethod_details : ""
/// code : null
/// code2 : null
/// ip : null
/// preference : null
/// social_links : null
/// biography : ""
/// address : null
/// city : null
/// country : null
/// postcode : null
/// status : "Active"
/// sort_order : "2"
/// source : "web"
/// created_at : "2022-03-09 10:35:34"
/// updated_at : "2022-04-25 09:31:46"
/// user_gcm_code : ""

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? userId, 
      String? prodImg, 
      String? title, 
      String? usergroupId, 
      String? isFeatured, 
      String? saleCount, 
      String? ratingCount, 
      String? balance, 
      String? firstname, 
      String? lastname, 
      String? username, 
      String? email, 
      String? rawPassword, 
      String? password, 
      String? salt, 
      String? isEmailVerified, 
      String? mobile, 
      String? isMobileVerified, 
      String? designation, 
      String? company, 
      String? dob, 
      String? gender, 
      String? image, 
      String? signature, 
      String? pmethodId, 
      String? pmethodDetails, 
      dynamic code, 
      dynamic code2, 
      dynamic ip, 
      dynamic preference, 
      dynamic socialLinks, 
      String? biography, 
      dynamic address, 
      dynamic city, 
      dynamic country, 
      dynamic postcode, 
      String? status, 
      String? sortOrder, 
      String? source, 
      String? createdAt, 
      String? updatedAt, 
      String? userGcmCode,}){
    _id = id;
    _userId = userId;
    _prodImg = prodImg;
    _title = title;
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
    _id = json['id'];
    _userId = json['user_id'];
    _prodImg = json['prod_img'];
    _title = json['title'];
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
  String? _id;
  String? _userId;
  String? _prodImg;
  String? _title;
  String? _usergroupId;
  String? _isFeatured;
  String? _saleCount;
  String? _ratingCount;
  String? _balance;
  String? _firstname;
  String? _lastname;
  String? _username;
  String? _email;
  String? _rawPassword;
  String? _password;
  String? _salt;
  String? _isEmailVerified;
  String? _mobile;
  String? _isMobileVerified;
  String? _designation;
  String? _company;
  String? _dob;
  String? _gender;
  String? _image;
  String? _signature;
  String? _pmethodId;
  String? _pmethodDetails;
  dynamic _code;
  dynamic _code2;
  dynamic _ip;
  dynamic _preference;
  dynamic _socialLinks;
  String? _biography;
  dynamic _address;
  dynamic _city;
  dynamic _country;
  dynamic _postcode;
  String? _status;
  String? _sortOrder;
  String? _source;
  String? _createdAt;
  String? _updatedAt;
  String? _userGcmCode;
Data copyWith({  String? id,
  String? userId,
  String? prodImg,
  String? title,
  String? usergroupId,
  String? isFeatured,
  String? saleCount,
  String? ratingCount,
  String? balance,
  String? firstname,
  String? lastname,
  String? username,
  String? email,
  String? rawPassword,
  String? password,
  String? salt,
  String? isEmailVerified,
  String? mobile,
  String? isMobileVerified,
  String? designation,
  String? company,
  String? dob,
  String? gender,
  String? image,
  String? signature,
  String? pmethodId,
  String? pmethodDetails,
  dynamic code,
  dynamic code2,
  dynamic ip,
  dynamic preference,
  dynamic socialLinks,
  String? biography,
  dynamic address,
  dynamic city,
  dynamic country,
  dynamic postcode,
  String? status,
  String? sortOrder,
  String? source,
  String? createdAt,
  String? updatedAt,
  String? userGcmCode,
}) => Data(  id: id ?? _id,
  userId: userId ?? _userId,
  prodImg: prodImg ?? _prodImg,
  title: title ?? _title,
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
  String? get id => _id;
  String? get userId => _userId;
  String? get prodImg => _prodImg;
  String? get title => _title;
  String? get usergroupId => _usergroupId;
  String? get isFeatured => _isFeatured;
  String? get saleCount => _saleCount;
  String? get ratingCount => _ratingCount;
  String? get balance => _balance;
  String? get firstname => _firstname;
  String? get lastname => _lastname;
  String? get username => _username;
  String? get email => _email;
  String? get rawPassword => _rawPassword;
  String? get password => _password;
  String? get salt => _salt;
  String? get isEmailVerified => _isEmailVerified;
  String? get mobile => _mobile;
  String? get isMobileVerified => _isMobileVerified;
  String? get designation => _designation;
  String? get company => _company;
  String? get dob => _dob;
  String? get gender => _gender;
  String? get image => _image;
  String? get signature => _signature;
  String? get pmethodId => _pmethodId;
  String? get pmethodDetails => _pmethodDetails;
  dynamic get code => _code;
  dynamic get code2 => _code2;
  dynamic get ip => _ip;
  dynamic get preference => _preference;
  dynamic get socialLinks => _socialLinks;
  String? get biography => _biography;
  dynamic get address => _address;
  dynamic get city => _city;
  dynamic get country => _country;
  dynamic get postcode => _postcode;
  String? get status => _status;
  String? get sortOrder => _sortOrder;
  String? get source => _source;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get userGcmCode => _userGcmCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['prod_img'] = _prodImg;
    map['title'] = _title;
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