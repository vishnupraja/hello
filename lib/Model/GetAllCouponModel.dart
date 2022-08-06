import 'dart:convert';
/// status : true
/// message : "Coupons List"
/// data : [{"id":"1","title":"new","code":"10new","course_id":"1","discount":"1.00","valid_till":"2022-05-04","status":"Active","sort_order":"0","created_by":"1","created_at":"2022-04-27 12:58:53","updated_at":"2022-04-27 12:58:53"}]

GetAllCouponModel getAllCouponModelFromJson(String str) => GetAllCouponModel.fromJson(json.decode(str));
String getAllCouponModelToJson(GetAllCouponModel data) => json.encode(data.toJson());
class GetAllCouponModel {
  GetAllCouponModel({
      bool? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetAllCouponModel.fromJson(dynamic json) {
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
GetAllCouponModel copyWith({  bool? status,
  String? message,
  List<Data>? data,
}) => GetAllCouponModel(  status: status ?? _status,
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

/// id : "1"
/// title : "new"
/// code : "10new"
/// course_id : "1"
/// discount : "1.00"
/// valid_till : "2022-05-04"
/// status : "Active"
/// sort_order : "0"
/// created_by : "1"
/// created_at : "2022-04-27 12:58:53"
/// updated_at : "2022-04-27 12:58:53"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? title, 
      String? code, 
      String? courseId, 
      String? discount, 
      String? validTill, 
      String? status, 
      String? sortOrder, 
      String? createdBy, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _title = title;
    _code = code;
    _courseId = courseId;
    _discount = discount;
    _validTill = validTill;
    _status = status;
    _sortOrder = sortOrder;
    _createdBy = createdBy;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _code = json['code'];
    _courseId = json['course_id'];
    _discount = json['discount'];
    _validTill = json['valid_till'];
    _status = json['status'];
    _sortOrder = json['sort_order'];
    _createdBy = json['created_by'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  String? _id;
  String? _title;
  String? _code;
  String? _courseId;
  String? _discount;
  String? _validTill;
  String? _status;
  String? _sortOrder;
  String? _createdBy;
  String? _createdAt;
  String? _updatedAt;
Data copyWith({  String? id,
  String? title,
  String? code,
  String? courseId,
  String? discount,
  String? validTill,
  String? status,
  String? sortOrder,
  String? createdBy,
  String? createdAt,
  String? updatedAt,
}) => Data(  id: id ?? _id,
  title: title ?? _title,
  code: code ?? _code,
  courseId: courseId ?? _courseId,
  discount: discount ?? _discount,
  validTill: validTill ?? _validTill,
  status: status ?? _status,
  sortOrder: sortOrder ?? _sortOrder,
  createdBy: createdBy ?? _createdBy,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  String? get id => _id;
  String? get title => _title;
  String? get code => _code;
  String? get courseId => _courseId;
  String? get discount => _discount;
  String? get validTill => _validTill;
  String? get status => _status;
  String? get sortOrder => _sortOrder;
  String? get createdBy => _createdBy;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['code'] = _code;
    map['course_id'] = _courseId;
    map['discount'] = _discount;
    map['valid_till'] = _validTill;
    map['status'] = _status;
    map['sort_order'] = _sortOrder;
    map['created_by'] = _createdBy;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}